class ToiletPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where.not(latitude: nil, longitude: nil).all
    end

  end
  def show?
    true
  end
  def new?
    user.owner?
  end
  def create?
    true
  end
  def dashboard?
    true
  end
  def edit?
    user.owner?
  end
  def update?
    user.owner?
  end
  def destroy?
    user.owner?
  end
end
