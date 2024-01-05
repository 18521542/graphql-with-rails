class TestService
  def self.call
    puts "Hello from TestService #{Sample.new.make_uppercase}"
    Sample.new(name: "TestService").save
  end
end