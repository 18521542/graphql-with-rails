module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true

    field :books, [BookType], null: true

    def books
      Book.where(author_id: object.id)
    end
  end
end 