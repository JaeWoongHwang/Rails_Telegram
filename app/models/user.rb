class User < ActiveRecord::Base
  # 유저는 메시지들을 많이 가지고 있음을 rails에게 알려줌
  has_many :messages
end
