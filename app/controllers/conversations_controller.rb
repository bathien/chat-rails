class ConversationsController < ApplicationController
  def create
    member ||= []
    #user chat user(co the la staff)
    if params[:user_id]
      member << params[:user_id]
    end
    
    if params[:shop_id]
      shops = Shop.joins(:UserShop).where(shop_id: params[:shop_id]])
      shops.each do |shop|
        member << shop.user_id 
    end

    @conversation = Conversation.get(current_user, member)
    
    add_to_conversations unless conversated?
 
    respond_to do |format|
      format.js
    end
  end

  def close
    @conversation = Conversation.find(params[:id])

    session[:conversations].delete(@conversation.id)

    respond_to do |format|
      format.js
    end
  end 
  private
 
  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end
 
  def conversated?
    session[:conversations].include?(@conversation.id)
  end
end