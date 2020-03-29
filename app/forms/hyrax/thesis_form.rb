# Generated via
#  `rails generate hyrax:work Thesis`
module Hyrax
  class ThesisForm < Hyrax::Forms::WorkForm
    self.model_class = ::Thesis
    self.terms += [:resource_type_thesis, :date_submitted, :handle, :college,
      :department, :degree_level, :degree_name, :advisor, :committee_member,
      :date_issued, :alternative_title, :subject, :extent, :publisher, :time_period,
      :geographical_area, :date_copyright, :date_available, :identifier, :university,
      :rights_note, :rights_uri, :rights_holder]

    self.terms -= [:contributor, :license, :publisher, :date_created, :date_available,
                   :date_copyright, :date_submitted,
                   :location, :related_url, :source, :handle, :based_near]

    self.required_fields += [:resource_type_thesis, :description]

    self.required_fields -= [:rights_statement, :keyword]

    def primary_terms
      [:creator, :title, :alternative_title, :description, :resource_type_thesis]
    end

    def secondary_terms
      [:advisor, :committee_member, :publisher, :college, :department, :degree_level, :degree_name,
      :date_issued, :extent, :keyword, :subject, :language, :rights_note,
      :rights_uri, :rights_statement, :rights_holder,
       :time_period, :geographical_area, :identifier, :university]
    end
  end
end
