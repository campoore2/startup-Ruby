require('rspec')
require('./lib/team')
require('./lib/member')

describe('Team') do
  before() do
  Team.clear()
  end

  describe("Member#cohorts") do
    it "creates a member object" do
      member = Member.new("Little Timmy")
      expect(member.cohorts()).to(eq("Little Timmy"))
    end
  end
end
