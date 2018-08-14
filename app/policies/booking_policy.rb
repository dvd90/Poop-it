class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

  end
  def create?
    user.renter?
  end
  def show?
    true
  end
  def dashboard?
    true
  end
  def edit?
    user.renter?
  end
  def update?
    user.renter?
  end
end
