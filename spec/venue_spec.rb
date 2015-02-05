require "spec_helper"
describe(Venue) {
  it { should have_and_belong_to_many(:bands) }
}
