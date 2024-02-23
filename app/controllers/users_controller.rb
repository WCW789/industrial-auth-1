class UsersController < ApplicationController

  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  
  before_action :set_user, only: %i[ show liked feed followers following discover ]

  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end
end
