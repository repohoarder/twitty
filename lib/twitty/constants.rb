# frozen_string_literal: true

module Twitty
  module Constants
    API_CONFIG = {
      fetch_webhooks: {
        method: :get,
        endpoint: '/1.1/account_activity/all/%{env}/webhooks.json',
        required_params: []
      },

      register_webhook: {
        method: :post,
        endpoint: '/1.1/account_activity/all/%{env}/webhooks.json?url=%{url}',
        required_params: [:url]
      },
      
      unregister_webhook: {
        method: :delete,
        endpoint: '/1.1/account_activity/all/%{env}/webhooks/%{id}.json',
        required_params: [:id]
      },
      
      fetch_subscriptions: {
        method: :get,
        endpoint: '/1.1/account_activity/all/%{env}/subscriptions.json',
        required_params: []
      },

      create_subscription: {
        method: :post,
        endpoint: '/1.1/account_activity/all/%{env}/subscriptions.json',
        required_params: []
      },

      remove_subscription: {
        method: :delete,
        endpoint: '/1.1/account_activity/all/%{env}/subscriptions/%{user_id}.json',
        required_params: [:user_id]
      },
      
      send_direct_message: {
        method: :post,
        endpoint: '/1.1/direct_messages/events/new.json',
        required_params: [:message, :recipient_id]
      },

      send_tweet_reply: {
        method: :post,
        endpoint: '/1.1/statuses/update.json',
        required_params: [:tweet, :reply_to_tweet_id]
      },

      request_oauth_token: {
        method: :post,
        endpoint: '/oauth/request_token',
        required_params: [:url]
      },

      access_token: {
        method: :post,
        endpoint: '/oauth/access_token',
        required_params: [:oauth_token, :oauth_verifier]
      }
  }.freeze
  end
end
