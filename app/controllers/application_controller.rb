class ApplicationController < ActionController::Base
  def home
    render '/layouts/home'
  end

  def send_audio
    p params
  end

  def compare
    context1 = Chromaprint::Context.new(44100, 1)
    fingerprint1 = context1.get_fingerprint(File.binread('B2.wav'))

    context2     = Chromaprint::Context.new(44100, 1)
    fingerprint2 = context2.get_fingerprint(File.binread('B2_copy.wav'))

    p fingerprint1.compare(fingerprint2)
    
    redirect_to "/"
  end
end
