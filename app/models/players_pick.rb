class PlayersPick < ApplicationRecord
  belongs_to :player
  belongs_to :champion
end
