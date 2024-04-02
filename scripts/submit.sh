file=$1
relative_file_dir_name=$2
ext_name=$3
problem_name=${relative_file_dir_name##*/}
# スラッシュ区切りの後ろから二番目の文字列を取得
contest_name=$(echo $relative_file_dir_name | awk -F'/' '{print $(NF-1)}')

url=https://atcoder.jp/contests/${contest_name}/tasks/${contest_name}_${problem_name}

if [ ${ext_name} = ".py" ]; then
    oj submit --yes --guess-python-interpreter pypy ${url} ${file}
else
    oj submit --yes ${url} ${file}
fi
