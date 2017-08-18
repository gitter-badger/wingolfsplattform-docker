feature "hello_world service" do
  scenario "test" do
    expect("hello").to be_kind_of String
  end
end