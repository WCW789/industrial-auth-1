class FollowRequestPolicy < ApplicationPolicy
  def create?
    true
  end

  def destroy?
    true
  end

  def update?
    true
  end
end 
