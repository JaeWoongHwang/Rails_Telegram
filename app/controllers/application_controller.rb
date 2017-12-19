class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    # 만약에 세션에 user_id가 있다면 유저를 통해 그 정보를 찾는다. 그리고 @user 변수에 정보를 담는다.
    @user = User.find(session[:user_id]) if session[:user_id]
  end

  # before_action는 모든 액션이 실행되기 전에 거쳐가는 필터
  # before_action "함수명" - 모든 컨트롤러가 발동되기 이전에 유저가 접속 되어 있는 지 확인한다

  def authorize #로그인 되었는지 판별하는 메소드
    redirect_to '/users/log_in' unless current_user
  end

  # 헬퍼에서도 사용할 수 있도록 등록. 이제 헬퍼에 해당 메소드 선언이 심어짐
  helper_method :current_user

end
