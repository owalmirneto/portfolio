# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :courses, resolver: Resolvers::Courses::ListResolver
    field :jobs_by_email, resolver: Resolvers::Jobs::ListByUserEmailResolver
    field :page_by_email, resolver: Resolvers::Pages::FindByUserEmailResolver
    field :skills_by_email, resolver: Resolvers::Skills::ListByUserEmailResolver
  end
end
