#!/bin/bash

declare -a ids=("0001" "0002" "0003" "0004" "1994")

declare -A grades
grades["0001"]="99.3% A"
grades["0002"]="87.6% B"
grades["0003"]="72.3% C"
grades["0004"]="68.0% D"
grades["1994"]="99.5% A"

find_student_grade() {
    local id=$1
    if [ -n "${grades[$id]}" ]; then
        echo "Final Grade for Student $id: ${grades[$id]}"
    else
        echo "No grade found for Student ID $id."
    fi
}
if [ $# -eq 1 ]; then
    student_id="$1"
    find_student_grade "$student_id"
else
    read -p "Enter the student ID: " student_id
    find_student_grade "$student_id"
fi
