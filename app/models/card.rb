# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  list_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  uuid        :uuid
#
# Indexes
#
#  index_cards_on_list_id  (list_id)
#
# Foreign Keys
#
#  fk_rails_11b32bc490  (list_id => lists.id)
#

class Card < ApplicationRecord
  belongs_to :list
end
