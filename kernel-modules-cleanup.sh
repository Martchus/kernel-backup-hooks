for i in /usr/lib/modules/[0-9]*; do
    if [[ ${i##*/} = '%v' ]] || pacman -Qo "${i}"; then
        continue
    fi
    mkdir /usr/lib/modules/.old
    mv "$i" /usr/lib/modules/.old
done
