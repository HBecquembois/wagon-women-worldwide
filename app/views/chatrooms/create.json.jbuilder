if @chatroom.persisted?
  json.form render(partial: "chatrooms/chatroom", formats: :html, locals: {chatroom: Chatroom.new})
  json.inserted_item render(partial: "chatrooms/chatroom", formats: :html, locals: {chatroom: @chatroom})
else
  json.form render(partial: "chatrooms/chatroom", formats: :html, locals: {chatroom: @chatroom})
end
