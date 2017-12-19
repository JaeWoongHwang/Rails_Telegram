# 중요한 정보 관리 방법 example for telegram_token

## 1. '.gitIgnore' 파일을 연다.

## 2. '/config/secrets.yml'을 gitIgnore에 추가 해준다.

## 3. '/config/secrets.yml'파일을 연다.

## 4. 파일에 숨기고 싶은 코드를 적는다.

## 5. 원래 파일에는 Rails.application.secrets.key_name을 통해 참조한다.
###  ex) token = Rails.application.secrets.key_name
