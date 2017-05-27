CompanyType = GraphQL::ObjectType.define do
  name "Company"

  field :id, !types.ID
  field :name, !types.String
  field :description, types.String
  field :users, types[UserType]
end
