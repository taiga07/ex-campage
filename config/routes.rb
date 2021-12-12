Rails.application.routes.draw do

  devise_for :users
  root to:'homes#top'

  resources:images do
    resources:comments,only:[:create, :destroy]
  end


  end
