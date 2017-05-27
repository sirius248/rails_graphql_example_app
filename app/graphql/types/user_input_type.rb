UserInputType = GraphQL::InputObjectType.define do
  name "UserInputType"

  argument :name, !types.String
  argument :email, !types.String
  argument :company_id, !types.Int
end
