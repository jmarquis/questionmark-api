# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  uuid         :uuid
#  workspace_id :integer
#
# Indexes
#
#  index_projects_on_workspace_id  (workspace_id)
#
# Foreign Keys
#
#  fk_rails_2b526e3a7f  (workspace_id => workspaces.id)
#

class Project < ApplicationRecord

  belongs_to :workspace
  has_many :lists

end
