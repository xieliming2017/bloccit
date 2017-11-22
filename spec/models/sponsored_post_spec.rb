require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:name) { RandomData.random_sentence }
  let(:description) { RandomData.random_paragraph }
  let(:title) { RandomData.random_sentence }
  let(:body) { RandomData.random_paragraph }
  let(:topic) { Topic.create!(name: name, description: description) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: title, body: body, price: 99) }

  it { is_expected.to belong_to(:topic) }

  describe "attributes" do
    it "has a title and body attribute" do
      expect(sponsored_post).to have_attributes(title: title, body: body, price: 99)
    end
  end
end
