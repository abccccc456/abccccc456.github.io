package cache_service

import (
	"strconv"
	"strings"
	
	"gin-blog/pkg/e"
)

type Article struct {
	ID	int
	Name	int
	State	int

	PageNum	int
	PageSize int
}

func (a *Tag) GetTagKey() string {
	keys := []string{
		e.CACHE_TAG,
		"LIST",
	}

	if a.Name != "" {
		keys = append(keys, t.Name)
	}
	if a.State > 0 {
		keys = append(keys, strconv.Itoa(a.State))
	}
	if a.PageNum > 0 {
		keys = append(keys, strconv.Itoa(a.PageNum))
	}
	if a.PageSize > 0 {
		keys = append(keys, strconv.Itoa(a.PageSize))
	}

	return strings.Join(keys, "_")
}
