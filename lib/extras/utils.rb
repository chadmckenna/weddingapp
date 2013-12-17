class Utils
  TOKEN_CHARSET = [('a'..'z'), ('A'..'Z'), ('1'...'9')].map(&:to_a).flatten

  def self.generate_random_string(size = 12)
    (1..size).map{ TOKEN_CHARSET[ SecureRandom.random_number(TOKEN_CHARSET.length) ] }.join
  end
end