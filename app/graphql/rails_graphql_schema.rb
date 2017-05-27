RailsGraphqlSchema = GraphQL::Schema.define do
  query(Types::QueryType)
end
