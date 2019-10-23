class UserController < ApplicationController

  def edit
    @user = current_user
    unless @user.setting
      Setting.create(locale: :pl, user: current_user)
    end
  end

end
