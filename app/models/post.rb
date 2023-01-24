class Post < ApplicationRecord

  #associations
  belongs_to :group

  #validations
  validates :title, presence: true
  validates :body, presence: true
  validates :category, presence: true
  has_one_attached :image
  validate :validate_attachment_filetypes


  private
  def validate_attachment_filetypes
    return unless image.attached?

    unless image.content_type.in?(%w[image/jpeg image/png image/gif video])
      errors.add(:image, "Image type must be jpg, png or gif")
    end

  end
end
