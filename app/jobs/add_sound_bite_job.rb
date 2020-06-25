class AddSoundBiteJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
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

  end
end
