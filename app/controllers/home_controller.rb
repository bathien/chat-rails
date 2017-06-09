class HomeController < ApplicationController
  def index
    session[:conversations] ||= []
 
    @users = User.all.where.not(id: current_user, status: 1)
    @shops = Shop.all
    @conversations = Conversation.includes(:recipient, :messages)
      .find(session[:conversations])
  end
end
