module Sluggable
  extend ActiveSupport::Concern
  included do
    acts_as_url :slug, url_attribute: :slug, sync: true
  end
  def to_param
    "#{id}/#{slug}"
  end
end
