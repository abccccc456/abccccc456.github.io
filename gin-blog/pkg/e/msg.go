package e

var MsgFlags = map[int]string {
	SUCCESS : "ok",
	ERROR : "fail",
	INVALID_PARAMS : "invalid params",
	ERROR_EXIST_TAG : "error exist tag",
	ERROR_NOT_EXIST_TAG : "not exist tag",
	ERROR_NOT_EXIST_ARTICLE : "not exist article",
	ERROR_AUTH_CHECK_TOKEN_FAIL : "token auth fail",
	ERROR_AUTH_CHECK_TOKEN_TIMEOUT : "token auth timeout",
	ERROR_AUTH_TOKEN: "token initialization fail",
	ERROR_AUTH: "token error",
	ERROR_UPLOAD_SAVE_IMAGE_FAIL : "save image fail",
	ERROR_UPLOAD_CHECK_IMAGE_FAIL : "check image fail",
	ERROR_UPLOAD_CHECK_IMAGE_FORMAT : "check image error, image format or size have some problem",
}

func GetMsg(code int) string {
	msg, ok := MsgFlags[code]
	if ok {
		return msg
	}

	return MsgFlags[ERROR]
}
