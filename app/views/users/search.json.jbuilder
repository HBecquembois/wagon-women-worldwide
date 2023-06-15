json.inserted_items render(partial: "users/users_list", formats: :html, locals: { users: @users })
json.counter "#{@users.count} #{'user'.pluralize(@users.count)}"
