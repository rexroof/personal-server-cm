package main

import (
	//	"bytes"
	"fmt"
	"net/http"
	"strings"
)

func main() {
	var client = &http.Client{
		Timeout: time.Second * 10,
	}

	// Generated by curl-to-Go: https://mholt.github.io/curl-to-go

	body := strings.NewReader(`name=rex&pass={{ aadl_password }}&form_id=user_login_form`)
	req, err := http.NewRequest("POST", "https://aadl.org/user/login", body)
	if err != nil {
		// handle err
	}
	req.Header.Set("User-Agent", "Mozilla/5.0 (REX64; rv:50.0) Gecko/20100101 Lukas/41.0 golang")
	req.Header.Set("Content-Type", "application/x-www-form-urlencoded")

	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		// handle err
		fmt.Println(err)
	}

	fmt.Println("StatusCode:", resp.StatusCode)
	fmt.Println(resp.Request.URL)

	/*
		buf := new(bytes.Buffer)
		buf.ReadFrom(resp.Body)
		newStr := buf.String()

		fmt.Printf(newStr)
	*/

	// alternative
	// body, err := ioutil.ReadAll(resp.Body)
	// fmt.Println("get:\n", keepLines(string(body), 3))

	defer resp.Body.Close()

}
