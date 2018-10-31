#!/bin/sh
test -e /etc/hath/hath.config && source /etc/hath/hath.config

hath_home=${hath_home:-/var/lib/hath}
data_dir=${data_dir:-${hath_home}/data}
cache_dir=${cache_dir:-${hath_home}/cache}
temp_dir=${temp_dir:-${hath_home}/temp}
log_dir=${log_dir:-${hath_home}/log}

cd "${hath_home}"

mkdir -p "${data_dir}"
mkdir -p "${cache_dir}"
mkdir -p "${temp_dir}"
mkdir -p "${log_dir}"

exec /usr/bin/java -jar /usr/lib/hath/hath.jar --data-dir="${data_dir}" --cache-dir="${cache_dir}" --temp-dir=${temp_dir} --log-dir=${log_dir} "$@"
