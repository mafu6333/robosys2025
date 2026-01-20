#!/bin/bash
# SPDX-FileCopyrightText: 2026 Fumiyori Manaka
# SPDX-License-Identifier: BSD-3-Clause

ng (){
	echo NG at line $1
	res=1
}

res=0

out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
