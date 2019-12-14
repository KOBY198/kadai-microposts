class FavoritesController < ApplicationController
  def create
    select_micropost = Micropost.find(params[:micropost_id])
    current_user.favor(select_micropost)
    flash[:success] = 'micropostをお気に入り登録しました。'
    redirect_to request.referer
  end

  def destroy
    select_micropost = Micropost.find(params[:micropost_id])
    current_user.unfavor(select_micropost)
    flash[:success] = 'microposのお気に入りを解除しました。'
    redirect_to request.referer 
  end
  
end
