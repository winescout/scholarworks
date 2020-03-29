# Generated via
#  `rails generate hyrax:work Dataset`
module Hyrax
  # Generated form for Dataset
  class DatasetForm < Hyrax::Forms::WorkForm
    self.model_class = ::Dataset

    self.terms += [:resource_type_dataset, :sponsor, :date_issued, :alternative_title,
     :handle, :college, :department, :extent, :contributor, :geographical_area, :time_period,
     :rights_note, :rights_uri, :rights_holder]

    self.terms -= [:handle, :source, :based_near, :location, :license,
      :date_created]

    self.required_fields += [:resource_type_dataset, :description, :college,
      :department]

    def primary_terms
      [:creator, :title, :alternative_title, :description,
        :resource_type_dataset, :publisher, :sponsor,
        :date_issued, :subject, :keyword, :language, :rights_statement]
    end

    def secondary_terms
      [:related_url, :identifier, :extent, :rights_note, :rights_uri, :rights_holder,
        :geographical_area, :time_period, :contributor]
    end
  end
end
