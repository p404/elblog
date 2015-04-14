require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ComentsHelper. For example:
#
# describe ComentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

  RSpec.describe Elblog::PostsHelper, :type => :helper do
    describe "PostsHelper" do
      context "routing paths helper" do
        it "should override posts_path" do
          path = Elblog.elblog_path + "/posts"
          expect(posts_path).to eq(path)
        end

        it "should override post_path" do
          post = FactoryGirl.create(:elblog_post)
          path = Elblog.elblog_path + "/posts/#{post.id}"
          expect(post_path post).to eq(path)
        end

        it "should override new_post_path" do
          path = Elblog.elblog_path + "/posts/new"
          expect(new_post_path).to eq(path)
        end

        it "should override edit_post_path" do
          post = FactoryGirl.create :elblog_post
          path = Elblog.elblog_path + "/posts/#{post.id}/edit"
          expect(edit_post_path post).to eq(path)
        end
      end
    end
  end
