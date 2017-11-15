require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New Question Title", body: "New Question Body", resolved: false)}

  describe "attributes" do
    it "has title, body and resolved attributes" do
      expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: false)
    end
  end

  it "should respond to title" do
    expect(question).to respond_to(:title)
  end

  it "should respond to body" do
    expect(question).to respond_to(:body)
  end

  it "should respond to resolved" do
    expect(question).to respond_to(:resolved)
  end
end
