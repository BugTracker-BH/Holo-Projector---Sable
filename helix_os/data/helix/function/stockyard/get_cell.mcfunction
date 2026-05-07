# helix:stockyard/get_cell — MACRO: read grid[idx] into _sy_cell
$data modify storage helix:vm _sy_cell set from storage helix:vm sy_grid[$(_sy_idx)]
