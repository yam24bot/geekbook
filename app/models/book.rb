class Book < ApplicationRecord
  mount_uploader :envelope, EnvelopeUploader
end
