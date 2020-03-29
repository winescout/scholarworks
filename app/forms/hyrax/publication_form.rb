# Generated via
#  `rails generate hyrax:work Publication`
module Hyrax
  class PublicationForm < Hyrax::Forms::WorkForm
    self.model_class = ::Publication
    self.terms += [:resource_type_publication, :sponsor, :date_issued, :alternative_title,
      :publication_status, :editor, :description, :handle, :college, :department,
      :bibliographic_citation, :extent, :geographical_area, :time_period, :date_copyright,
      :university, :rights_note, :rights_uri, :rights_holder]

    self.terms -= [:contributor, :date_created, :license, :based_near, :source, :handle]

    self.required_fields += [:resource_type_publication, :description,
      :college, :department, :date_issued]

    self.required_fields -= [:rights_statement]

    def primary_terms
      [:creator, :title, :alternative_title, :description,
        :resource_type_publication, :editor, :publisher, :sponsor,
        :college, :department, :date_issued, :date_copyright,
        :keyword, :subject, :language, :rights_statement, :rights_note, :rights_holder, :rights_uri]
    end

    def secondary_terms
      [:publication_status, :related_url, :identifier, :bibliographic_citation, :extent,
      :university]
    end
  end
end
