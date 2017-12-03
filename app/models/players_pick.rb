class PlayersPick < ApplicationRecord
  belongs_to :champion
  belongs_to :player
end
