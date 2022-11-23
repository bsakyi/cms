class Page < ApplicationRecord

    belongs_to :subject
    #modified the admin_users to :editors and specified the appropriate class_name
    has_and_belongs_to_many :editors, :class_name => "AdminUser"
end
