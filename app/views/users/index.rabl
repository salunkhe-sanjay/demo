if @users.count > 3
    collection @users
    attributes :name
    child :posts do
        attributes :name
    end
else
 node :errors do
   3.times.map do
      ["s","s"]
    end
 end

end