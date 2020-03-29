# Generated via
#  `rails generate hyrax:work EducationalResource`
module Hyrax
  # Generated form for EducationalResource
  class EducationalResourceForm < Hyrax::Forms::WorkForm
    self.model_class = ::EducationalResource

    self.terms += [:resource_type_educational_resource, :sponsor, :date_issued,
      :alternative_title, :handle, :college, :department, :contributor, :date_available,
      :date_created, :identifier, :extent, :rights_note, :rights_uri, :rights_holder]

    self.terms -= [:handle, :based_near, :source]

    self.required_fields += [:resource_type_educational_resource, :description]

    def primary_terms
      [:creator, :title, :alternative_title, :description,
        :resource_type_educational_resource, :contributor, :publisher, :sponsor,
        :college, :department, :date_issued,
        :keyword, :subject, :language, :rights_statement, :rights_note, :rights_uri, :rights_holder,
        :related_url,  :identifier, :extent]
    end
  end
end
