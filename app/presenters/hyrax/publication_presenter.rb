# Generated via
#  `rails generate hyrax:work Publication`
module Hyrax
  class PublicationPresenter < Hyrax::WorkShowPresenter
    delegate :date_submitted, :handle, :campus, :college, :department,
             :abstract, :geographical_area, :time_period, :date_available, :date_copyright,
             :date_issued, :sponsor, :alternative_title, :statement_of_responsibility, to: :solr_document
  end
end
