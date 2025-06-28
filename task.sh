!/bin/bash



# Создание нужных директорий
mkdir dir1
mkdir dir2
mkdir -p dir3/dir4

# Создание пустого файла list.txt в текущей директории
touch list.txt

# Копирование в другие директории
cp list.txt dir2/
cp dir2/list.txt dir3/dir4/
cp dir2/list.txt dir1/summary.txt

# Создание hello.sh
touch hello.sh
chmod +x hello.sh
echo 'echo Всем студентам, привет!' > hello.sh

# Создание пустого файла empty
touch empty

# Вывести пути к list.txt в dir2 и dir3/dir4
find . -type f -name "list.txt" | grep -E './dir2|./dir3/dir4'

# Вывести список файлов (без директорий и без task.sh) в текущей директории
ls -p | grep -v / | grep -v task.sh

# Выполнить hello.sh
./hello.sh

# Вывести пути к summary.txt и двум list.txt
echo ./dir1/summary.txt
echo ./dir2/list.txt
echo ./dir3/dir4/list.txt
