# Generated via
#  `rails generate hyrax:work CreativeWork`
class CreativeWork < ActiveFedora::Base
  include ::Hyrax::WorkBehavior
  include ::CsuMetadata

  self.indexer = CreativeWorkIndexer
  # Change this to restrict which works can be added as a child.
  # self.valid_child_concerns = []
  validates :title, presence: { message: 'Your work must have a title.' }

  self.human_readable_type = 'Creative Work'

  # This must be included at the end, because it finalizes the metadata
  # schema (by adding accepts_nested_attributes)
  include ::Hyrax::BasicMetadata
end
