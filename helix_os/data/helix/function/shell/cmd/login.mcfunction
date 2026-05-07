function helix:hash/compute
data modify storage helix:vm _login_result set value "fail"
execute if data storage helix:vm {_login_user:"root"} if score helix _hash matches 2185976 run data modify storage helix:vm _login_result set value "ok"
execute if data storage helix:vm {_login_result:"ok"} run function helix:shell/cmd/login_ok_root
execute if data storage helix:vm {_login_result:"fail"} run function helix:shell/cmd/login_fail
