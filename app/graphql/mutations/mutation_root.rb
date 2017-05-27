MutationRoot = GraphQL::ObjectType.define do
  name "Mutation"

  field :addUser, UserType do
    description "add new user"
    argument :user, UserInputType

    resolve ->(o,args,c) {
      User.create!(args[:user].to_h)
    }
  end
end
