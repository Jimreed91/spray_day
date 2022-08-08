require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProductsHelper. For example:
#
# describe ProductsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProductsHelper, type: :helper do
  describe 'to_unit' do
    it 'returns \'l\' if passed true' do
      expect(to_unit(true)).to eq('L')
    end

    it 'returns \'Kg\' if passed false' do
      expect(to_unit(false)).to eq('Kg')
    end
  end
end
