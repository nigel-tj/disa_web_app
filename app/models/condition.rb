class Condition < ApplicationRecord
  attr_accessor :address
  geocoded_by :area
  after_validation :geocode
  geocoded_by :area
  reverse_geocoded_by :latitude, :longitude
  geocoded_by :address
  after_validation -> {
    self.area = self.address
    geocode
  }, if: ->(obj){ obj.address.present? and obj.address != obj.area }
  
  after_validation :reverse_geocode, unless: ->(obj) { obj.address.present? },
  if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
  after_validation :geocode, if: ->(obj){ obj.area.present? and obj.area_changed? }
    after_validation :reverse_geocode, unless: ->(obj) { obj.area.present? },
  if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
end
