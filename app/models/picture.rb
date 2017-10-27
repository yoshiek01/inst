class Picture < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    #アップローダーへ画像をマウント

    belongs_to :user
end
