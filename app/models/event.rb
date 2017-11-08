class Event < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}
  validates :ends_at, day_in_between: true

  private

  def day_in_between
    if (starts_at.parse + ) <= ends_at.parse
      true
    else
      puts "End Date has to be higher than start date."
  end
end
