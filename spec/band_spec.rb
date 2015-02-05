require "spec_helper"
describe(Band) {
  it { should have_and_belong_to_many(:venues) }
}
