# frozen_string_literal: true

Thredded::Engine.routes.draw do # rubocop:disable Metrics/BlockLength
  resource :theme_preview, only: [:show], path: 'theme-preview' if %w[development test].include? Rails.env

  page_constraint = { page: /[1-9]\d*/ }

  scope path: 'private-topics' do
    resource :read_state, only: [:update], as: :mark_all_private_topics_read
    resource :private_topic, only: [:new], path: '' do
      post :preview, on: :new, controller: 'private_topic_previews'
    end
    resources :private_topics, except: %i[new show], path: '' do
      member do
        get '(page-:page)', action: :show, as: '', constraints: page_constraint
      end
      resources :private_posts, path: '', except: %i[index show] do
        post :preview, on: :new, controller: 'private_post_previews'
        resource :preview, only: [:update], controller: 'private_post_previews'
        member do
          get 'quote'
          post 'mark_as_unread'
        end
      end
    end
  end

  scope only: [:show], constraints: { id: Thredded.routes_id_constraint } do
    resources :private_post_permalinks, path: 'private-posts'
    resources :post_permalinks, path: 'posts'
  end

  resources :autocomplete_users, only: [:index], path: 'autocomplete-users'

  constraints(->(req) { req.env['QUERY_STRING'].include? 'q=' }) do
    get '/' => 'topics#search', as: :messageboards_search
    get '/:messageboard_id(.:format)' => 'topics#search', as: :messageboard_search
  end

  scope path: 'admin' do
    resources :messageboard_groups, only: %i[new create]
    scope controller: :moderation, path: 'moderation' do
      scope constraints: page_constraint do
        get '(/page-:page)', action: :pending, as: :pending_moderation
        get '/history(/page-:page)', action: :history, as: :moderation_history
        get '/users(/page-:page)', action: :users, as: :users_moderation
        get '/users/:id(/page-:page)', action: :user, as: :user_moderation
        get '/activity(/page-:page)', action: :activity, as: :moderation_activity
      end
      post '', action: :moderate_post, as: :moderate_post
      post '/user/:id', action: :moderate_user, as: :moderate_user
    end
  end

  resource :preferences, only: %i[edit update], as: :global_preferences
  resource :messageboard, path: 'messageboards', only: [:new]
  resources :messageboards, only: %i[edit update]
  resources :messageboards, only: %i[index create], path: '' do
    resource :preferences, only: %i[edit update]
    resource :topic, path: 'topics', only: [:new] do
      post :preview, on: :new, controller: 'topic_previews'
    end
    resources :topics, path: '', except: %i[index new show] do
      collection do
        get '(page-:page)', action: :index, as: '', constraints: page_constraint
        get '/category/:category_id', action: :category, as: :categories
      end
      member do
        get '(page-:page)', action: :show, as: '', constraints: page_constraint

        # match (un)follow via get as well so that redirecting back to it after sign in works.
        match 'follow', via: %i[post get]
        match 'unfollow', via: %i[post get]
      end
      resources :posts, except: %i[index show], path: '' do
        post :preview, on: :new, controller: 'post_previews'
        resource :preview, only: [:update], controller: 'post_previews'
        member do
          get 'quote'
          post 'mark_as_unread'
        end
      end
    end
  end

  root to: 'messageboards#index'
end
