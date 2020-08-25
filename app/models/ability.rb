# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)     
    if user.admin_role?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :manage, :dashboard         # allow access to dashboard
    elsif user.employer_role?
      can :manage, Company
      can :manage, Job
    else
      can :manage, Cv, user_id: user.id
      # can :manage, Profile, user_id: user.id
      # can :manage, Portfolio, cv: { user: { id: user.id } }
      # can :manage, Education, cv: { user: { id: user.id } }
      # can :manage, Experience, cv: { user: { id: user.id } }
      # can :manage, Language, cv_language: { cv: { user: { id: user.id } } }
      # can :manage, Skill, cv_skill: { cv: { user: { id: user.id } } }
      # can :manage, Bookmark, user_id: user.id
      # can :manage, Applyjob, user_id: user.id
    end
  end
end
