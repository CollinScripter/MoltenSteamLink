#!/bin/bash
#

if [ "${MARVELL_SDK_PATH}" = "" ]; then
	MARVELL_SDK_PATH="$(cd "steamlink-sdk" && pwd)"
fi
if [ "${MARVELL_ROOTFS}" = "" ]; then
	source "${MARVELL_SDK_PATH}/setenv.sh" || exit 1
fi
TOP="${PWD}"
SRC="${TOP}/MoltenGamepad"

#
# Patch it
#
pushd "${SRC}"
patch -p1 <"${TOP}/moltengamepad.patch" || exit 1
popd
#
# Build it
#
pushd "${SRC}"
make PLATFORM=STEAMLINK MAKECMDGOALS=release || exit 1
popd

export DESTDIR="${TOP}/steamlink/apps/moltengamepad"

mkdir -p "${DESTDIR}"
chmod +x "${SRC}/moltengamepad"
cp "${SRC}/moltengamepad" "${DESTDIR}"

# Create the table of contents and icon
cat >"${DESTDIR}/toc.txt" <<__EOF__
name=MoltenGamepad
icon=icon.png
run=moltengamepad.sh
__EOF__

base64 -d >"${DESTDIR}/icon.png" <<__EOF__

__EOF__

cat >"${DESTDIR}/moltengamepad.sh" <<__EOF__
#!/bin/sh
exec ./moltengamepad --mimic-xpad
__EOF__

name=$(basename ${DESTDIR})
pushd "$(dirname ${DESTDIR})"
tar zcvf $name.tgz $name || exit 3
rm -rf $name
popd


