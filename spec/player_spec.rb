require "spec_helper"

module TicTacToe
  describe Player do

    context "#initialize" do
      it "raises an exception when initialized with {}" do
        expect{Player.new({})}.to raise_error
      end

      it "does not raise an exception when initialized with proper arguments" do
        expect{Player.new({color: 'red', name: 'me'})}.to_not raise_error
      end
    end

    context "#color" do
      let(:player) {Player.new({color: 'red', name: 'me'})}

      it "returns the color" do
        expect(player.color).to eq('red')
      end

      it 'returns the name' do
        expect(player.name).to eq('me')
      end
    end
  end
end
