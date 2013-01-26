class CommunityController < ApplicationController
  def index
  @users = User.all
  end
end
