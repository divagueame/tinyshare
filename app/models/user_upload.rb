class UserUpload < ApplicationRecord
  has_one_attached :user_file
end
