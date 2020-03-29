# Generated via
#  `rails generate hyrax:work EducationalResource`
module Hyrax
  # Generated controller for EducationalResource
  class EducationalResourcesController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::EducationalResource

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::EducationalResourcePresenter
  end
end
