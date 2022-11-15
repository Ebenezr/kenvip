class RoleHasPermission < ApplicationRecord
  belongs_to :permission_tbl
  belongs_to :role
end
