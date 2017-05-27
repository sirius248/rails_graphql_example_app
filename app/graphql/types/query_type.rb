Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :user do
    type UserType
    argument :id, !types.ID
    resolve ->(obj, args, ctx) {
      User.find(args[:id])
    }
  end

  field :company do
    type CompanyType
    argument :id, !types.ID
    resolve ->(obj, args, ctx) {
      Company.find(args[:id])
    }
  end
end
