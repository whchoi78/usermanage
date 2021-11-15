#! /bin/bash

echo "비밀번호를 입력 하세요."
read pass

echo "생성할 그룹명을 입력 하세요."
read group
groupadd $group

echo "시작값을 입력 하시오."
read start

echo "종료값을 입력 하시오."
read end

echo "---------------------"

for i in `seq $start $end`     # user 생성 및 패스워드 그룹 지정
do
useradd $group$i -p $pass -g $group 
done

tail -`expr $end - $start + 1` /etc/passwd # user 생성 확인
