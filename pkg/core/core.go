package core

import (
	"net/http"

	"github.com/Gundy-Zhou/errors"
	"github.com/gin-gonic/gin"
	"log"
)

type SucResponse struct {
	Code    int         `json:"code"`
	Message string      `json:"message"`
	Data    interface{} `json:"data"`
}

// ErrResponse defines the return messages when an error occurred.
// Reference will be omitted if it does not exist.
// swagger:model
type ErrResponse struct {
	// Code defines the business error code.
	Code int `json:"code"`

	// Message contains the detail of this message.
	// This message is suitable to be exposed to external
	Message string `json:"message"`

	// Reference returns the reference document which maybe useful to solve this error.
	Reference string `json:"reference,omitempty"`
}

// WriteResponse write an error or the response data into http response body.
// It use errors.ParseCoder to parse any error into errors.Coder
// errors.Coder contains error code, user-safe error message and http status code.
func WriteResponse(c *gin.Context, err error, data interface{}) {
	if err != nil {
		log.Printf("%#+v", err)
		coder := errors.ParseCoder(err)
		c.JSON(coder.HTTPStatus(), ErrResponse{
			Code:      coder.Code(),
			Message:   coder.String(),
			Reference: coder.Reference(),
		})

		return
	}
	c.JSON(http.StatusOK, data)
}

func SuccessResponse(c *gin.Context, data interface{}, message ...string) {
	msg := "请求成功"
	if len(message) > 0 {
		msg = message[0]
	}
	c.JSON(http.StatusOK, SucResponse{
		Code:    0,
		Message: msg,
		Data:    data,
	})
}
