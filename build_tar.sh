#!/bin/sh
. ./build.conf

add_specs() {
	# eg: pmaterial_icons-0.2|pmaterial_icons|0.2||BuildingBlock|12420K||pmaterial_icons-0.2.pet||icons for puppy loosely based on material design||||
	SIZE=$(du -k -d 0 $1 | awk '{print $1}')
	cat >  ${1}/pet.specs <<EOF
$1-$VER|$1|$VER||BuildingBlock|${SIZE}K||$1-${VER}.pet||$NAME $COMMENT||||
EOF
}

add_specs ${PKG}
echo "Packaging ${PKG} as ${PKG}.tar.xz."
[ -f "${PKG}.tar.xz" ] && rm "${PKG}.tar.xz"
(cd $PKG
tar -cJf ../${PKG}.tar.xz * )
sha256sum ${PKG}.tar.xz > ${PKG}.tar.xz.sha256.txt
echo 'Done!'
