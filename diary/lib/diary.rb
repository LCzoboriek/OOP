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

class SecretDiary

  # attr_reader :locked

  def initialize
    @diary = []
    @locked = Locked.new
    # @locked = true
  end

  def add_entry(entry)
    fail "Diary is locked!" if locked == true
    @diary << entry
  end

  def get_entries
    fail "Diary is locked!" if locked  == true
    @diary
  end

  def unlock
    @locked.unlock
  end

  def locked
    @locked.locked
  end

end


class Locked

  attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def locked
    @locked = true
  end
end
