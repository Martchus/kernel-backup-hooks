#!/bin/bash

mkdir -p "${DESTDIR}/usr/share/kernel-backup-hooks"
for script in kernel-modules-backup-{post,pre}.sh kernel-modules-cleanup.sh; do
    install -Dm644 -t "${DESTDIR}/usr/share/kernel-backup-hooks" "${script}"
done

mkdir -p "${DESTDIR}/usr/share/libalpm/hooks"
for hook in kernel-modules-backup-{post,pre}.hook; do
    install -Dm644 -t "${DESTDIR}/usr/share/libalpm/hooks" "${hook}"
done

mkdir -p "${DESTDIR}/usr/lib/tmpfiles.d"
for config in kernel-modules-cleanup.conf; do
    install -Dm644 -t "${DESTDIR}/usr/lib/tmpfiles.d" "${config}"
done

mkdir -p "${DESTDIR}/usr/lib/systemd/system"
for service in kernel-modules-cleanup.service; do
    install -Dm644 -t "${DESTDIR}/usr/lib/systemd/system" "${service}"
done
