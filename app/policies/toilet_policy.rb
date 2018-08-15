class ToiletPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.where.not(latitude: nil, longitude: nil)
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
end
