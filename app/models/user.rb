class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_one :designer


  def cart_count
    $redis.scard "cart#{id}"
  end

  def name_with_surname
    "#{name} #{surname}"
  end

  def update_designer_id(did)
    if designer_id.nil?
      self.designer_id = did
      self.save
    end
  end
  
end
