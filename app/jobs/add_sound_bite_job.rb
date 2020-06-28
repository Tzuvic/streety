class AddSoundBiteJob < ApplicationJob
  queue_as :default

  def perform(sound_type, item_id)
    # Do something later

    if sound_type == 'food'
      food_item = FoodItem.find(item_id)
      word = food_item.food_category.name.singularize + " " + food_item.name
    elsif sound_type == 'category'
      food_category = FoodCategory.find(item_id)
      word = food_category.name
    end

    client = Google::Cloud::TextToSpeech.text_to_speech
    input_text = { text: word }
    # Note: the voice can also be specified by name.
    # Names of voices can be retrieved with client.list_voices
    voice = {
      language_code: "es-ES",
      ssml_gender:   "FEMALE"
    }
    audio_config = { audio_encoding: "MP3" }
    response = client.synthesize_speech(
      input:        input_text,
      voice:        voice,
      audio_config: audio_config
    )
    # The response's audio_content is binary.
    random_number = SecureRandom.uuid
    the_file = "#{Rails.root}/tmp/#{random_number}_sound_file.mp3"
    File.open the_file, "wb" do |file|
      # Write the response to the output file.
      file.write response.audio_content
      # Cloudinary::Uploader.upload(file)
    end

    if sound_type == 'food'
      food_item.audio.attach(io: File.open("#{Rails.root}/tmp/#{random_number}_sound_file.mp3"), filename: 'nothing.mp3', content_type: "audio/mp3")

      food_item.save

    elsif sound_type == 'category'
      food_category.audio.attach(io: File.open("#{Rails.root}/tmp/#{random_number}_sound_file.mp3"), filename: 'nothing.mp3', content_type: "audio/mp3")

    end

    puts "Audio content written to mp3 file"
  end
end


# attach(io: File.open("#{Rails.root}/tmp/bdffb56d-c0c0-4db4-a8a0-9fe68b1cd881_sound_file.mp3"), filename: 'nothing.mp3', content_type: "audio/mp3")
