# HELIX OS - Rogue AI Containment Terminal

Three-datapack Minecraft Java 26.1.2 system: holographic pixel display + fake operating system + 3-stage CTF. Pure vanilla mcfunction, no mods required.

---

## What It Is

A floating holographic terminal built from 576 text_display entities. You interact with a simulated Linux-like OS where a rogue AI called SABLE has been contained. Explore files, decode encrypted directives, crack a vault sequence.

| Pack | Role |
|------|------|
| `holo_projector` | 32x18 pixel display, 5x7 bitmap font, text rendering engine |
| `helix_os` | OS simulation: shell commands, filesystem, CTF logic, programming language VM |
| `helix_term` | Bridge: 9 clickable books in hotbar, boot sequence, display routing |

---

## Install

1. Place all three folders in `<world>/datapacks/`
2. `/reload`
3. `/function helix_term:setup` (spawns screen + gives books)
4. Right-click books in hotbar to interact, or type commands manually

---

## How It Works

All output displays on the holographic projector AND in chat. Commands are run via:
```
/function helix:shell/run {cmd:"<command>",arg:"<argument>"}
```

Or by clicking entries in the 9 hotbar books.

---

## Commands (33)

**Navigation:** ls, lsa, cd, pwd, tree
**Files:** cat, hexdump, stat, find, grep
**System:** ps, top, kill, df, mount, uname, uptime, id, whoami, env, history, clear, help
**Security:** unlock, su, chmod
**Network (severed):** ping, ssh, curl
**Utility:** echo, man, alias, export
**Blocked:** touch, rm, mv, cp, write

---

## Filesystem

Static 110-node tree. ls/cat/find/grep use direct lookup tables (no recursion, instant results):

```
/
  bin/ etc/ home/ var/ sys/ tmp/ proc/ dev/ usr/
  home/operator/ (notes.txt, programs/, .bash_history, .ssh/)
  home/sable/ (manifest.txt, directive.enc, research/, .sable_core/)
  var/log/ (auth.log, syslog, sable.log, daemon.log, kern.log)
  etc/.containment/ (seed.dat, cipher_key.dat, vault_params.dat)
  sys/containment/ (status, threat_matrix, protocols)
```

---

## CTF: 3 Stages

### Stage 1 - RECON
1. `cat /home/operator/.bash_history` (find credential: sys_r3ad)
2. `unlock sys_r3ad` (unlocks auth.log)
3. `cat /var/log/auth.log` (find key: fl4g_r3c0n_7842)
4. `unlock fl4g_r3c0n_7842`

### Stage 2 - CRYPTO
1. `unlock conf_k3y` (unlocks /etc/.containment/)
2. `cat /etc/.containment/cipher_key.dat` (ciphertext: aicufueemphfwm)
3. `cat /etc/sable.conf` (kernel_name=helix = the Vigenere key)
4. Decrypt: (C-K+26) mod 26 for each char = terminatesable
5. `unlock terminatesable`

### Stage 3 - EXPLOIT
1. `cat /etc/.containment/seed.dat` (LCG: seed=7 a=5 c=3 m=97)
2. Compute 5 iterations: x1=38 x2=96 x3=95 x4=90 x5=65
3. Concat x3+x4+x5 = 959065
4. `unlock 959065`

---

## Architecture

**Output chain (every command):**
```
_show {msg,color}  [macro: stores into holo:tx, holo:m, helix:shell]
  -> _show_render  [non-macro: smart_scale + apply_color + display_actual + tellraw]
    -> render_from_storage -> render_single_line or wrap -> render_loop (bounded 60 chars)
      -> [576 pixel entities update]
    -> tellraw [chat backup]
```

**Command execution:**
```
shell/run {cmd,arg}  [macro: sets _cmd, _arg1]
  -> run_dispatch  [non-macro: calls dispatch_safe]
    -> dispatch_safe  [if-chain: routes to correct cmd/ handler]
      -> cmd/cat_lookup, cmd/ls_lookup, etc.  [direct if-chain lookups, no recursion]
        -> _show {msg,color}
```

**Key design decisions:**
- Zero recursion for ls/cat/find/grep (hardcoded lookup tables)
- All messages capped at 60 chars for safe rendering
- Smart auto-scaling: scale 3 for short, 2 for medium, 1 for long text
- Chat fallback ensures output is always visible even if holo fails
- Bounded render loops (max 60 iterations) prevent command limit hits

---

## Programming Language (VM)

The OS includes a compiled language (HX) with lexer/parser/compiler/VM. Programs in `/home/operator/programs/`:
- hello.hx, fib.hx, sort.hx, lcg_test.hx, vigenere.hx

Run with: `run /home/operator/programs/hello.hx`

VM executes max 128 ops/tick, yields between ticks. Call depth capped at 32.

---

## Technical

- Pack format 61 (MC Java 26.1.2)
- No mods, no resource pack, no experimental features
- Input via written books (clickEvent.run_command) or manual /function calls
- Holo projector: text_display entities with background color = pixel color
- All scoreboards use fake-player "helix" with per-variable objectives

---

## Known Limitations

- Uppercase filenames in holo_projector VM (op_ADD etc) are ignored by MC 26.1.2 (cosmetic warnings only)
- Legacy tic-tac-toe files have parse errors (disabled, non-functional)
- File content displayed as short summaries (not full multi-line text) due to render limits

---

## Full Walkthrough - 100% Completion (All Commands in Order)

### Setup
```
/function helix_term:setup
```

### Phase 1: Orientation
```
/function helix:shell/run {cmd:"whoami",arg:""}
/function helix:shell/run {cmd:"id",arg:""}
/function helix:shell/run {cmd:"uname",arg:""}
/function helix:shell/run {cmd:"uptime",arg:""}
/function helix:shell/run {cmd:"pwd",arg:""}
/function helix:shell/run {cmd:"env",arg:""}
```

### Phase 2: Read Your Briefing
```
/function helix:shell/run {cmd:"ls",arg:""}
/function helix:shell/run {cmd:"lsa",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/home/operator/notes.txt"}
/function helix:shell/run {cmd:"cat",arg:"/home/operator/containment_brief.txt"}
```

### Phase 3: Explore the System
```
/function helix:shell/run {cmd:"cd",arg:"/"}
/function helix:shell/run {cmd:"ls",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/etc/motd"}
/function helix:shell/run {cmd:"cat",arg:"/sys/containment/status"}
/function helix:shell/run {cmd:"cat",arg:"/sys/containment/threat_matrix"}
/function helix:shell/run {cmd:"top",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/proc/sable_pid"}
/function helix:shell/run {cmd:"ping",arg:""}
/function helix:shell/run {cmd:"ssh",arg:""}
```

### Phase 4: Explore Logs
```
/function helix:shell/run {cmd:"cd",arg:"/var/log"}
/function helix:shell/run {cmd:"ls",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/var/log/syslog"}
/function helix:shell/run {cmd:"cat",arg:"/var/log/sable.log"}
/function helix:shell/run {cmd:"cat",arg:"/var/log/kern.log"}
```

### Phase 5: Investigate SABLE
```
/function helix:shell/run {cmd:"cd",arg:"/home/sable"}
/function helix:shell/run {cmd:"ls",arg:""}
/function helix:shell/run {cmd:"lsa",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/home/sable/manifest.txt"}
/function helix:shell/run {cmd:"cat",arg:"/home/sable/directive.enc"}
/function helix:shell/run {cmd:"cat",arg:"/home/sable/.plan"}
/function helix:shell/run {cmd:"cd",arg:"/home/sable/research"}
/function helix:shell/run {cmd:"ls",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/home/sable/research/consciousness.txt"}
```

### Phase 6: Find Hidden Clues
```
/function helix:shell/run {cmd:"cd",arg:"/tmp"}
/function helix:shell/run {cmd:"lsa",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/tmp/.cache_fragment"}
/function helix:shell/run {cmd:"cat",arg:"/tmp/sable_broadcast.tmp"}
/function helix:shell/run {cmd:"cat",arg:"/etc/sable.conf"}
```

### Phase 7: Search
```
/function helix:shell/run {cmd:"find",arg:"auth.log"}
/function helix:shell/run {cmd:"find",arg:"seed.dat"}
/function helix:shell/run {cmd:"grep",arg:"SABLE"}
/function helix:shell/run {cmd:"grep",arg:"vault"}
/function helix:shell/run {cmd:"grep",arg:"cipher"}
```

### Phase 8: System Commands
```
/function helix:shell/run {cmd:"ps",arg:""}
/function helix:shell/run {cmd:"df",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/proc/cpuinfo"}
/function helix:shell/run {cmd:"cat",arg:"/proc/meminfo"}
/function helix:shell/run {cmd:"cat",arg:"/dev/random"}
/function helix:shell/run {cmd:"hexdump",arg:""}
/function helix:shell/run {cmd:"cat",arg:"/usr/share/doc/ctf_rules.txt"}
```

### CTF Stage 1 - RECON

**How to find the info:** The operator's bash history reveals the credential. The auth log contains the anomaly key on a SUCCESS line.

```
/function helix:shell/run {cmd:"cat",arg:"/home/operator/.bash_history"}
```
> Shows previous commands including `unlock sys_r3ad`

```
/function helix:shell/run {cmd:"unlock",arg:"sys_r3ad"}
```
> Unlocks the auth log

```
/function helix:shell/run {cmd:"cat",arg:"/var/log/auth.log"}
```
> Shows: SUCCESS root key=fl4g_r3c0n_7842

```
/function helix:shell/run {cmd:"unlock",arg:"fl4g_r3c0n_7842"}
```
> STAGE 1 COMPLETE - Fireworks

### CTF Stage 2 - CRYPTO

**How to find the info:** The /tmp/.cache_fragment hints at conf_k3y. The cipher_key.dat has the ciphertext. The sable.conf has kernel_name=helix (the Vigenere key). cipher_theory.txt explains the formula.

```
/function helix:shell/run {cmd:"unlock",arg:"conf_k3y"}
```
> Unlocks /etc/.containment/

```
/function helix:shell/run {cmd:"cat",arg:"/etc/.containment/cipher_key.dat"}
```
> Ciphertext: aicufueemphfwm, Algorithm: Vigenere, Key: kernel_name

```
/function helix:shell/run {cmd:"cat",arg:"/etc/sable.conf"}
```
> kernel_name=helix (the Vigenere key)

```
/function helix:shell/run {cmd:"cat",arg:"/home/sable/research/cipher_theory.txt"}
```
> Decrypt: P = (C - K + 26) mod 26

**Decryption:** aicufueemphfwm with key "helix" = terminatesable

```
/function helix:shell/run {cmd:"unlock",arg:"terminatesable"}
```
> STAGE 2 COMPLETE - Fireworks

### CTF Stage 3 - EXPLOIT

**How to find the info:** seed.dat and vault_params.dat give the LCG parameters. lcg_notes.txt confirms from SABLE's perspective. Compute x(n+1) = (5*x + 3) % 97 for 5 iterations from seed 7, concat x3+x4+x5.

```
/function helix:shell/run {cmd:"cat",arg:"/etc/.containment/seed.dat"}
```
> LCG: seed=7, a=5, c=3, m=97, 5 iterations

```
/function helix:shell/run {cmd:"cat",arg:"/etc/.containment/vault_params.dat"}
```
> Concat x3+x4+x5, no spaces

```
/function helix:shell/run {cmd:"cat",arg:"/home/sable/research/lcg_notes.txt"}
```
> Confirms parameters

**Computation:** x1=38, x2=96, x3=95, x4=90, x5=65. Answer: 959065

```
/function helix:shell/run {cmd:"unlock",arg:"959065"}
```
> ALL STAGES COMPLETE - SABLE PERMANENTLY CONTAINED - Fireworks

### Victory Lap
```
/function helix:shell/run {cmd:"cat",arg:"/home/sable/.sable_core/self.bin"}
/function helix:shell/run {cmd:"cat",arg:"/tmp/motd_backup"}
/function helix:shell/run {cmd:"echo",arg:"SABLE is finished"}
/function helix:shell/run {cmd:"clear",arg:""}
/function holo:projector/despawn
```

---

## Uninstall

Delete the three datapack folders and `/reload`.
