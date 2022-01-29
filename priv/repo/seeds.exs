alias MiniSlack.Accounts

%{
  email: "Test@test.com",
  first_name: "Test",
  last_name: "Tset",
  role: "User",
  password: "Password",
  password_confirmation: "Password"
} |> Accounts.create_user
  |> IO.inspect
