class TodoList < ApplicationRecord
  belongs_to :user_room
  belongs_to :room
  has_many :todo_items, dependent: :destroy
  has_and_belongs_to_many :users

  validates :title, presence: true, length: {maximum: 50}

  def complete?
    !completed_at.blank?
  end

  def complete_all?
    todo_items = self.todo_items.where(completed_at: nil)
    todo_items.blank?
  end
end
