# helix:parse/peek_token — MACRO: load current token into _cur_tok without consuming
$data modify storage helix:vm _cur_tok set from storage helix:vm tokens[$(_tidx)]
