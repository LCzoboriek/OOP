# SecretDiary
#   - lock
#   - unlock
#   - add_entry
#   - get_entries

# Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

# When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

# When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.

# First organise it into one class only.

# Then, when all your tests are green, reorganise it into classes with high cohesion.

# This will also involve reorganising your tests!

require 'diary'

describe Locked do
  context '.locked' do
    it "if diary is locked, you cant add_entry" do
      diary = SecretDiary.new
      diary.lock!
      expect{diary.add_entry("First Entry")}.to raise_error "Diary is locked!" 
    end

    it "when diary is locked, you can't get entries" do
      diary = SecretDiary.new
      diary.lock!
      expect{diary.get_entries}.to raise_error "Diary is locked!"
    end

  

  
    it 'if user unlocks diary, add_entry should work' do
      diary = SecretDiary.new
      diary.unlock!
      diary.add_entry("First entry")
      expect(diary.get_entry).to eq(["First entry"])
    end

    it 'if user unlocks diary, get_entries should work' do
      diary = SecretDiary.new
      diary.unlock!
      diary.add_entry("First entry")
      expect(diary.get_entries).to eq(["First entry"])
    end
    
  end

end
