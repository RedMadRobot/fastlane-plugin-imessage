describe Fastlane::Actions::ImessageAction do
  before(:each) do
    @text = "New build!"
    @buddy = "213213"
  end

  describe 'imessage' do
    it 'send message' do
      expect(Fastlane::Actions).to receive(:sh).with("open --background -a Messages").ordered
      expect(Fastlane::Helper::ImessageHelper).to receive(:sleep).with(5)
      expect(Fastlane::Actions).to receive(:sh).with(%{osascript -e 'tell application "Messages" to send "#{@text}" to buddy "#{@buddy}" of (1st service whose service type = iMessage)'}).ordered

      Fastlane::Actions::ImessageAction.run(text: @text, to: @buddy)
    end
  end

  describe 'Invalid Parameters' do
    it 'raises an error if no text was given' do
      expect do
        result = Fastlane::FastFile.new.parse("lane :test do
          imessage(to: '#{@buddy}')
        end").runner.execute(:test)
      end.to raise_error "No text"
    end

    it 'raises an error if no buddy was given' do
      expect do
        result = Fastlane::FastFile.new.parse("lane :test do
          imessage(text: '#{@buddy}')
        end").runner.execute(:test)
      end.to raise_error "No to buddy"
    end
  end
end
