class User < ApplicationRecord

  # パスワード暗号化用のメソッド（gem 'bcrypt'をインストールしておくと使える）
  has_secure_password

  #バリデーション  
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :password, {presence: true}
  
  def posts
    return Post.where(user_id: self.id)
  end
  
end
