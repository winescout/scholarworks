# Generated via
#  `rails generate hyrax:work Dataset`
class Dataset < ActiveFedora::Base
  include ::Hyrax::WorkBehavior
  include ::CsuMetadata
  before_create :update_fields

  self.indexer = DatasetIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  self.human_readable_type = 'Research Data'

  property :investigator, predicate: ::RDF::Vocab::MARCRelators.org do |index|
    index.as :stored_searchable, :facetable
  end

  property :resource_type_dataset, predicate: ::RDF::Vocab::DC.type do |index|
    index.as :stored_searchable, :facetable
  end

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata

  protected

  def update_fields
    super

    # assign main resource type from local resource type
    self.resource_type = resource_type_dataset
  end
end
