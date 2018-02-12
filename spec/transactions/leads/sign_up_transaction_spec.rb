require "rails_helper"

describe Leads::SignUpTransaction do

  describe "#call" do

  let(:command) { described_class.new }

  context 'success save' do
    let(:result) { command.call(email: 'test@test.com', first_name: 'first_name', last_name: 'last_name', phone: '100-100-1000') }

    it 'return new lead' do
      expect(result.success?).to eq true
      data = result.value
      expect(data.id).not_to eq nil
    end
  end

  context 'missing first_name' do
    let(:result) { command.call(email: 'test@test.com', first_name: '', last_name: 'last_name', phone: '100-100-1000') }

    it 'return error' do
      expect(result.failure?).to eq true
      expect(result.value).to eq(first_name: ["must be filled"])
    end
  end

end
end
