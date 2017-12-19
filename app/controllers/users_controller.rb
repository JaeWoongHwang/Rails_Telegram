class UsersController < ApplicationController

  def sign_up
    # form으로 가입 정보를 받아 register에 넘긴다
  end

  def register
    User.create(
    email: params[:email],
    password: params[:password]
    )
    redirect_to '/'
  end

  def log_in
    # form으로 로그인 정보를 받아 로그인 세션으로 보내준다

  end

  def log_in_session
    user = User.find_by(email: params[:email])
    if user
      if user.password == params[:password]
        session[:user_id] = user.id
        redirect_to '/'
      elsif
        puts "Password is not correct"
        redirect_to '/users/log_in'
      end
    else
      redirect_to '/users/sign_up'
    end
  end

  def log_out
    # 로그 아웃에선 세션을 클리어 해줘야 함
    session.clear

    redirect_to '/'
  end

end
