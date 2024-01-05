module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :books, [Types::BookType], null: false,
      description: "Books query" do
       argument :id, ID, required: false  
    end
    def books(id: nil)
      if id
        Book.where(id: id)
      else
        Book.all
      end
    end

    field :authors, [Types::AuthorType], null: false,
      description: "Authors query"

    def authors
      Author.all
    end 
  end
end
