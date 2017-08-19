KVER="${KVER:-$(uname -r)}"
if [[ -e "/usr/lib/modules/backup/${KVER}" ]]; then
    mv -n "/usr/lib/modules/backup/${KVER}" /usr/lib/modules
fi
rm -rf /usr/lib/modules/backup
