class Picture < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    #アップローダーへ画像をマウント
    validates :title, presence: true
    belongs_to :user
end
