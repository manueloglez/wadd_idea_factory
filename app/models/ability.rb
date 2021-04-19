# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    alias_action :create, :read, :update, :destroy, to: :crud

    can :crud, Idea, user_id: user.id
    can :destroy, Review do |review|
      user == review.user
    end
  end
end
