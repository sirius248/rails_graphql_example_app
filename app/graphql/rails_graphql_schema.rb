RailsGraphqlSchema = GraphQL::Schema.define do
  query(Types::QueryType)
  mutation MutationRoot
end
