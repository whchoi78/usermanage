#! /bin/bash

echo "비밀번호를 입력 하세요."
read pass

echo "생성할 그룹명을 입력 하세요."
read group
groupadd $group

for i in {1..10..1}     # 알아서 숫자 변경 하시오.
do
useradd sales$i -p $pass -g $group #sales부분 알아서 잘 바꾸시오.
done