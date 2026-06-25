def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  hash.values.any? do |hash_value|
    hash_value == search_value || (hash_value.is_a?(Hash) && contains?(hash_value, search_value))
  end
end
