class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end

  def create?
    true
  end

  def destroy?
    if user.id == @comment.author_id
      true
    end
  end

  def update?
    if user.id == @comment.author_id
      true
    end
  end
end
