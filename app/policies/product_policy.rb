class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def edit?
    record.user == user
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    return true
  end
end
