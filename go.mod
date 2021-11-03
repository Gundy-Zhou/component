module github.com/Gundy-Zhou/component

go 1.16

require (
	github.com/Gundy-Zhou/errors v1.0.0
	github.com/asaskevich/govalidator v0.0.0-20210307081110-f21760c49a8d
	github.com/bitly/go-simplejson v0.5.0
	github.com/bmizerany/assert v0.0.0-20160611221934-b7ed37b82869 // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fatih/color v1.13.0 // indirect
	github.com/gin-gonic/gin v1.7.4
	github.com/go-playground/locales v0.14.0
	github.com/go-playground/universal-translator v0.18.0
	github.com/go-playground/validator/v10 v10.9.0
	github.com/gosuri/uitable v0.0.4
	github.com/h2non/filetype v1.1.1
	github.com/json-iterator/go v1.1.12
	github.com/mattn/go-runewidth v0.0.13 // indirect
	github.com/moby/term v0.0.0-20210619224110-3f7ff695adc6
	github.com/sony/sonyflake v1.0.0
	github.com/speps/go-hashids v2.0.0+incompatible
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.7.0
	golang.org/x/crypto v0.0.0-20210915214749-c084706c2272
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c
	k8s.io/klog/v2 v2.20.0
)

replace github.com/Gundy-Zhou/log => ../log

replace github.com/Gundy-Zhou/errors => ../errors

replace github.com/Gundy-Zhou/api => ../api
