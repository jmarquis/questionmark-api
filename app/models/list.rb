# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  title      :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  uuid       :uuid
#
# Indexes
#
#  index_lists_on_project_id  (project_id)
#
# Foreign Keys
#
#  fk_rails_67f2498cc9  (project_id => projects.id)
#

class List < ApplicationRecord
  belongs_to :project
  has_many :cards
end
