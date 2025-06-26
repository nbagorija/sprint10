#!/bin/bash

# Создать директорию dir1
mkdir dir1

# Перейти в директорию dir1
cd dir1

# Создать пустой файл summary.txt
touch summary.txt

# Создать директорию dir2
mkdir dir2

# Скопировать summary.txt в dir2 как list.txt
cp summary.txt dir2/list.txt

# Перейти в dir2
cd dir2

# Вывести относительный путь до list.txt
echo "./dir2/list.txt"

# Вернуться в dir1
cd ..

# Создать директорию dir3 в dir1
mkdir dir3

# Перейти в dir3
cd dir3

# Создать директорию dir4
mkdir dir4

# Скопировать list.txt из dir2 в dir4
cp ../dir2/list.txt dir4/list.txt

# Вывести относительный путь до list.txt в dir4
echo "./dir3/dir4/list.txt"

# Вернуться в dir1
cd ..

# Вывести относительный путь до summary.txt
echo "./dir1/summary.txt"

# Создать пустой файл empty
touch empty

# Вывести содержимое файла empty
cat empty

# Перейти в dir2
cd dir2

# Создать файл hello.sh
touch hello.sh

# Добавить права на выполнение для hello.sh
chmod +x hello.sh

# Записать в hello.sh строку "#!/bin/bash"
echo "#!/bin/bash" > hello.sh

# Вывести файлы в текущей директории, содержащие "hello" или "list" в имени
ls | grep -E 'hello|list'

# Вывести содержимое hello.sh
cat hello.sh

# Вернуться в dir1
cd ..

# Записать строку "Всем студентам, привет!" в summary.txt
echo "Всем студентам, привет!" > summary.txt

# Вывести содержимое summary.txt
cat summary.txt

# Вывести относительный путь до summary.txt
echo "./dir1/summary.txt"

# Вывести относительные пути до list.txt в dir2 и dir3/dir4
echo "./dir2/list.txt"
echo "./dir3/dir4/list.txt"

# Вернуться в начальную директорию
cd ..

# Удалить директорию dir1 и все ее содержимое
rm -r dir1