#!/usr/bin/env bash

# ===== 克隆版绕过验证核心补丁 =====
export ATHENA_HOST='ws://athena.mr-one.cn'
export API_HOST='http://res.mr-one.cn'
echo -n "2" > /data/params/d/HasAcceptedTerms
echo -n "1.0" > /data/params/d/HasAcceptedTermsSP
echo -n "0.2.0" > /data/params/d/CompletedTrainingVersion
echo -n "1.0" > /data/params/d/CompletedSunnylinkConsentVersion
echo -n "1" > /data/params/d/IsMetric
echo -n "0000000000000000" > /data/params/d/DongleId
# =================================

exec ./launch_chffrplus.sh "$@"
