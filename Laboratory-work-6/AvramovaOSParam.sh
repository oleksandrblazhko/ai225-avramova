#!/bin/bash
parameter=$1
value=$(grep "$parameter" /proc/meminfo | awk '{print $2}')
echo "Значення параметру $parameter: $value"
if [ "$2" = "info" ]; then
  case "$parameter" in
    "MemTotal")
      echo "Доступний обсяг оперативної пам'яті."
      ;;
    *)
      echo "Опис параметру $parameter не знайдено."
      ;;
  esac
fi
