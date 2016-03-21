class Product < ActiveRecord::Base
  belongs_to :designer

  def cart_action(current_user_id)
    if $redis.sismember "cart#{current_user_id}", id
      "Remove from"
    else
      "Add to"
    end
  end

  def poster
    "#{photo_url}"
  end
end
