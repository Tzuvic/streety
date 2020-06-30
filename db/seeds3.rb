puts "Creating Food Item..."
test_food_item = { name: 'burito', image_url: "https://pbs.twimg.com/media/CLBn5YKUkAAEfyb.jpg", description: "The best from home! Our delicious bread stuff with a bit of everything on the menu (breaded beaf, scramble eggs, sausage, three types of cheese, jam, avocado, tomatoe, onion, mayo and jalapeños)", food_category_id: FoodCategory.last.id, user: User.last }
first_food_item = FoodItem.create!(test_food_item)
puts "created #{first_food_item}"







require "google/cloud/text_to_speech"
    client = Google::Cloud::TextToSpeech.text_to_speech
    input_text = { text: "hola" }
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
    File.open "./tmp/test.mp3", "wb" do |file|
      # Write the response to the output file.
      file.write response.audio_content
    end
    puts "Audio content written to file test.mp3"
