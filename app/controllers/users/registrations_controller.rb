#新規登録時にユーザが入力できないフォームにランダムな値を自動で保存する
class Users::RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    hash[:uid] = User.create_unique_string
    super
  end
end
