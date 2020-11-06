module Types
  class QueryType < BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, [LinkType], null: false
    field :all_users, [UserType], null: false
    field :all_votes, [VoteType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end

    def all_users
      User.all
    end

    def all_votes
      Vote.all
    end
  end
end