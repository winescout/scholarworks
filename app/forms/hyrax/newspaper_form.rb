# Generated via
#  `rails generate hyrax:work Newspaper`
module Hyrax
  class NewspaperForm < Hyrax::Forms::WorkForm
    self.model_class = ::Newspaper
    self.terms += [:resource_type]
  end
end
