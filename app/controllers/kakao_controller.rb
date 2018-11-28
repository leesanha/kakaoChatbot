class KakaoController < ApplicationController
  def keyboard
    @msg = {
      type: "buttons", 
      buttons: ["안녕","반가워","잘가"]
      
    }
    render json: @msg, status: :ok
  end

  def messages
    @result = params[:content]
    
    if @result.include? "안녕" or @result.include? "하이" or @result.include? "hi"
      @msg = {
        message: {text: ["응 안녕", "하이"].sample},
        keyboard: {type: "text"}
      }
      render json: @msg, status: :ok
    else
      @msg = {
        message: {text: "뭔말이야"},
        keyboard: {type: "text"}
      }
      render json: @msg, status: :ok
    end
  end
end