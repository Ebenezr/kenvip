class ModelHasPermission < ApplicationRecord
  belongs_to :permission_tbl
  belongs_to :model
end
