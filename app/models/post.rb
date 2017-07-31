class Post < ActiveRecord::Base
    has_many :taggings
    has_many :tags, through: :taggings
    belongs_to :user 
    has_many :comments

    # after_commit :broadcastToPosts, on: :create
    
    def all_tags=(names)
        self.tags = names.split(",").map do |name|
            Tag.where(name: name.strip).first_or_create!
        end
    end

    def all_tags
        self.tags.map(&:name).join(", ")
    end
    
    def self.tagged_with(name)
        Tag.find_by_name!(name).posts
    end

    def broadcastToPosts
        PostsBroadcastJob.perform_now(@post)
    end
end
