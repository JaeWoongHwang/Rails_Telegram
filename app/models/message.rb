class Message < ActiveRecord::Base
  # 메시지는 반드시 유저에 속해야 한다
  belongs_to :user
end
