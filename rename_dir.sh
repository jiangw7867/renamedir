#!/bin/bash

# 设置文件扩展名
extension=".txt"

# 遍历当前目录下的所有文件
for file in *${extension}
do
  # 获取文件名（不包括扩展名）
  filename=$(basename "${file}" "${extension}")
  # 重命名文件
  mv "${file}" "${filename}_new${extension}"
done
