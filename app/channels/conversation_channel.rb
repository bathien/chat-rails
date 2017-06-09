class ConversationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "conversations-#{current_user.id}"
    stream_from "chat_rooms_#{params['chat_room_id']}_channel"
  end
 
  def unsubscribed
    stop_all_streams
  end
 
   def speak(data)
    if data['chat_room_id']
      current_user.messages.create!(body: data['message'], chat_room_id: data['chat_room_id'])
    else
      message_params = data['message'].each_with_object({}) do |el, hash|
        hash[el.values.first] = el.values.last
      end 
      Message.create(message_params)
    end
  end
end
