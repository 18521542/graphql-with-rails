module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :author, AuthorType , null: true

    def author
      Author.find(object.author_id)
    end
  end
end