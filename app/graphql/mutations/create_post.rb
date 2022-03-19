module Mutations
  class CreatePost < GraphQL::Schema::Mutation
    # graphql_name 'CreatePost'
    type Types::PostType, null: false

    argument :body, String, required: true
    argument :title, String, required: true
 
    def resolve(title: nil, body: nil)
      p "--------------"
      Rails.logger.debug('111')
      p "--------------"
      post = Post.create!(
        title: title,
        body: body
      )
      { post: post }
    end
  end
end
