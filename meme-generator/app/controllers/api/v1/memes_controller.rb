class Api::V1::MemesController < ApplicationController
      def index
    render json: Meme.all
  end

  def create
    meme = Meme.create(meme_params)
    render json: meme
  end

  def destroy
    Meme.destroy(params[:id])
  end

  def update
    meme = Meme.find(params[:id])
    meme.update_attributes(meme_params)
    render json: meme
  end

  private

  def meme_params
    params.require(:meme).permit(:template_id, :memeId,
        :username,
        :password,
        :text0,
        :text1)
  end
end
