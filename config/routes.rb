Rails.application.routes.draw do
  # トップページ
  root 'static_pages#top'
  # 静的ページ
  get '/terms', to: 'static_pages#terms'
  get '/privacy_policy', to: 'static_pages#privacy_policy'
  get '/guide', to: 'static_pages#guide'
  # ユーザー登録・ログイン周り
  resources :users, only: %i[new create]
  # プロフィール登録
  resources :profiles, only: %i[new create edit update destroy show]
  # 日焼け止め
  resources :sunscreens, only: %i[index show]
  # タグ
  resources :tags, only: %i[index show]
  # スケジュール
  resources :schedules, only: %i[new create edit update destroy show]
  # admin
  namespace :admin do
    resources :sunscreens
    resources :users
    resources :tags
  end
end
