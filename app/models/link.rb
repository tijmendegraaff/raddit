class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments
  before_validation :review_url
end

private

def review_url
    if url =~ /^(http:\/\/)/
      self.url = url
    elsif url =~ /^(https:\/\/)/
      self.url = url
    else
      self.url = "http://#{url}"
    end
  end
