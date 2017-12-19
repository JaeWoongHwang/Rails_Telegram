module ApplicationHelper
  # def current_user
  #   # 만약에 세션에 user_id가 있다면 유저를 통해 그 정보를 찾는다. 그리고 @user 변수에 정보를 담는다.
  #   @user = User.find(session[:user_id]) if session[:user_id]
  # end
  #
  # 이 current_user는 뷰에서는 적용 안된다. 왜냐 뷰가 작동하기전 이 코드들은 사라지기 떄문
  # 그래서 helper에서 정의해주면 된다. 어플리케이션 컨트롤러에서 정의한 메소드는 뷰를 제외한 곳에서 작동
  # 근데 helper에도 ApplicationController에도 같은 코드가 있으면 지저분해 보임. 그래서 헬퍼에 심어주는 코드를 작성
end
