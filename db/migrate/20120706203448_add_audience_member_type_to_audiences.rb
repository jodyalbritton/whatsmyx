class AddAudienceMemberTypeToAudiences < ActiveRecord::Migration
  def change
    add_column :audiences, :audience_member_type, :string
  end
end
