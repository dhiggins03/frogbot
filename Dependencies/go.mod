module example.com/vulnerableapp

go 1.16

require (
    github.com/dgrijalva/jwt-go v3.2.0 // Known security issue
)
