class Album < ApplicationRecord
  belongs_to :band
  has_many :tracks, dependent: :destroy
  
  
  validates :band, :name, :year, presenc: true 
  validates :live, inclusion: {in: [true, false]}
  validates :name, uniqueness: {scope: :band_id}
  validates :year, numercality: {minimum: 1900, maximum: 9000}
  
  
  
  after_initialize :set_defaults
  
  def set_defaults
    self.live ||= false
  end 
end
