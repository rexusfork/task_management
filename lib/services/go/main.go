package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"

	"github.com/gorilla/mux"
)

type Tasks struct {
	ID         string `json:"ID"`
	TaskName   string `json:"taskName"`
	TaskDetail string `json:"taskDetail"`
	Date       string `json:"date"`
}

var tasks []Tasks

func allTasks() {
	task := Tasks{
		ID:         "1",
		TaskName:   "New Project",
		TaskDetail: "You must lead the project and finish it",
		Date:       "2022-01-22",
	}
	tasks = append(tasks, task)
	task1 := Tasks{
		ID:         "2",
		TaskName:   "Power Project",
		TaskDetail: "We need to hire more stuffs before the deadline",
		Date:       "2022-01-22",
	}
	tasks = append(tasks, task1)
	fmt.Println("Your task are ", tasks)
}

func homePage(w http.ResponseWriter, r *http.Request) {
	fmt.Println("I am home page")
}

func getTasks(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "application/")
	json.NewEncoder(w).Encode(tasks)
}

func getTask(w http.ResponseWriter, r *http.Request) {
	taskid := mux.Vars(r)
	flag := false
	for i := 0; i < len(tasks); i++ {
		if taskid["id"] == tasks[i].ID {
			json.NewEncoder(w).Encode(tasks[i])
			flag = true
			break
		}
	}
	if flag == !flag {
		json.NewEncoder(w).Encode(map[string]string{"status": "Error"})
	}
}

func createTask(w http.ResponseWriter, r *http.Request) {
	fmt.Println("I am home page")
}

func deleteTask(w http.ResponseWriter, r *http.Request) {
	fmt.Println("I am home page")
}

func updateTask(w http.ResponseWriter, r *http.Request) {
	fmt.Println("I am home page")
}

func handleRoutes() {
	router := mux.NewRouter()
	router.HandleFunc("/", homePage).Methods("GET")
	router.HandleFunc("/gettasks", getTasks).Methods("GET")
	router.HandleFunc("/gettask/{id}", getTask).Methods("GET")
	router.HandleFunc("/create", createTask).Methods("POST")
	router.HandleFunc("/delete/{id}", deleteTask).Methods("DELETE")
	router.HandleFunc("/update/{id}", updateTask).Methods("PUT")
	log.Fatal(http.ListenAndServe(":8083", router))
}

func main() {
	allTasks()
	handleRoutes()
}
