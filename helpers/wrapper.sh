#!/usr/bin/env bash
$(dirname $0)/../../dart-sdk/bin/dart ${0%.sh}.dart ${@}
