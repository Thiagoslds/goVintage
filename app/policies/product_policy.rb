class ProductPolicy < ApplicationPolicy
  class Scope < Scope
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

    def resolve
      scope.all
    end
  end
end
