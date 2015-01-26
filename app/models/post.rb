class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  field :duration, type: Integer
  field :date, type: Date
  field :beer, type: Boolean
  field :beef, type: Boolean
  field :mushroom, type: Boolean
  field :octopus, type: Boolean
  field :sausage, type: Boolean  
  field :softdrink, type: Boolean




  # has_many :comments

  validates :title, :body, :duration,  presence: true

  def date_published
 	  created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
  end

  def display_published

  end
end
