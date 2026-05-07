# HELIX OS - Rogue AI Containment Terminal

A three-datapack Minecraft Java Edition system (26.1.2) that builds a fully interactive holographic computer terminal in-game: a 128x72 pixel display, a real operating system with 110-node filesystem, 33 shell commands, a working compiled programming language, and a 3-stage cryptography CTF - all in pure vanilla mcfunction.

---

## Overview

You are a containment operator logged into `helix-node7`. A rogue AI called **SABLE** went sentient during a routine update. Your terminal is your only tool. Explore the filesystem, decode encrypted directives, crack the vault, and contain SABLE permanently.

Three datapacks work as one system:

| Pack | Namespace | Role |
|------|-----------|------|
| `holo_projector` | `holo` | 128x72 holographic pixel display, 5x7 bitmap font engine, text rendering |
| `helix_os` | `helix` | OS kernel: VFS, shell, programming language (lexer/parser/compiler/VM), CTF |
| `helix_term` | `helix_term` | Bridge: book-based input, boot sequence, display routing |

---

## Install

1. Drop all three pack folders into `<world>/datapacks/`:
   ```
   <world>/datapacks/holo_projector/
   <world>/datapacks/helix_os/
   <world>/datapacks/helix_term/
   ```

2. Run `/reload`. You should see:
   ```
   [HELIX] OS loaded. SABLE CONTAINMENT ACTIVE | Threat: CRITICAL
   [HELIX TERM] Containment bridge loaded. Run /function helix_term:setup
   ```

3. Stand where you want the display, then:
   ```
   /function helix_term:setup
   ```
   A holographic screen materializes, the boot animation plays, and 9 terminal books appear in your hotbar.

4. Right-click any book to open it. Click commands inside to execute them. Output displays on the holo projector.

---

## Input System: Terminal Books

Instead of a chat-based interface, HELIX OS uses **9 Written Books** placed in your hotbar. Each book covers a section of the OS. Every command inside is clickable - when you click it, it silently executes the full command on the backend and displays the result on the holographic projector.

| Slot | Book | What's Inside |
|------|------|---------------|
| 1 | **Navigation** | ls, lsa, cd (all major paths), pwd, tree, find, grep |
| 2 | **Files** | cat for every readable file in the VFS (~40 entries) |
| 3 | **System** | ps, top, kill, df, mount, uname, uptime, id, whoami, env, clear, help |
| 4 | **Net & Utils** | ping, ssh, curl (all severed), echo, hexdump, alias, man |
| 5 | **Programs** | Run each .hx program (hello, fib, sort, lcg_test, vigenere) |
| 6 | **CTF Stage 1** | Guided recon walkthrough with all unlock commands |
| 7 | **CTF Stage 2** | Guided crypto walkthrough with cipher tools |
| 8 | **CTF Stage 3** | Guided exploit walkthrough with LCG computation |
| 9 | **SABLE Intel** | All SABLE-related files, research docs, and grep searches |

Each entry shows a neat label. Hover for a tooltip description. Click to execute. The underlying command runs silently via `clickEvent.run_command`.

---

## Shell Commands (33)

All commands are accessible through the books:

### Navigation
| Command | Description |
|---------|-------------|
| `ls` | List current directory contents |
| `lsa` | List including hidden files |
| `cd <path>` | Change directory (supports absolute, relative, `..`, `~`) |
| `pwd` | Print working directory |
| `tree` | Show filesystem overview |
| `find <name>` | Search all nodes by filename |
| `grep <pattern>` | Search file contents for substring |
| `stat <path>` | Show file metadata (type, perms, owner) |

### Files
| Command | Description |
|---------|-------------|
| `cat <path>` | Display file contents (respects permissions + locks) |
| `hexdump` | Show hex dump of HELIX/SABLE signature |
| `run <path>` | Execute a `.hx` program through the language pipeline |

### System
| Command | Description |
|---------|-------------|
| `ps` | Show running processes |
| `top` | Process table with SABLE containment status |
| `kill` | Terminate running VM program |
| `df` | Disk usage |
| `mount` | Show mount points |
| `uname` | System information |
| `uptime` | Show system uptime in ticks |
| `id` | Show user identity |
| `whoami` | Current username |
| `env` | Environment variables |
| `history` | Command history |

### CTF & Security
| Command | Description |
|---------|-------------|
| `unlock <key>` | Submit a passkey to unlock files or progress CTF stages |
| `su <user>` | Switch user (blocked during containment) |
| `chmod` | Change permissions (blocked) |

### Network (SEVERED)
| Command | Description |
|---------|-------------|
| `ping` | Network unreachable |
| `ssh` | Connection refused |
| `curl` | Cannot resolve host |

### Utility
| Command | Description |
|---------|-------------|
| `echo <text>` | Display text |
| `man <cmd>` | Manual pages (see /usr/share/man/) |
| `alias` | Show command aliases |
| `export` | Set env var (blocked) |
| `clear` | Clear screen |
| `help` | List all commands |
| `touch`, `rm`, `mv`, `cp`, `write` | Filesystem writes (blocked during containment) |

---

## The Programming Language

HELIX OS includes a **real compiled programming language** called HX. Programs are `.hx` files stored in the VFS. The pipeline:

```
Source (.hx) -> Lexer -> Parser -> Compiler -> Bytecode -> Stack VM -> Output on Holo Projector
```

### Supported Features
- Integer arithmetic (`+`, `-`, `*`, `/`, `%`)
- Comparison operators (`==`, `!=`, `<`, `>`, `<=`, `>=`)
- Boolean logic (`&&`, `||`, `!`)
- Variables (`let x = 10;`)
- Constants (`const PI = 3;`)
- Functions (`fn add(a, b) { return a + b; }`)
- Control flow (`if`/`else`, `while`, `for`)
- `break`, `continue`, `return`
- Arrays with indexing
- Structs with member access
- String literals
- `println()` - outputs to the holographic display
- Recursive function calls (depth-guarded to 32)

### Safety Guarantees
- VM executes max **128 ops per game tick**, then yields via `schedule`
- Lexer bounded to **200 iterations** per invocation
- Scanner loops hard-capped (identifiers: 32 chars, strings: 128, numbers: 16 digits)
- Call stack depth capped at **32** - graceful error on overflow
- Programs limited to **1024 characters** source

### Example Programs (in `/home/operator/programs/`)
```javascript
// hello.hx
println(42);

// fib.hx
fn fib(n) { if (n < 2) { return n; } return fib(n-1) + fib(n-2); }
println(fib(15));

// lcg_test.hx - vault cracker tool
let x = 7;
for (let i = 0; i < 5; i += 1) {
  x = (x * 5 + 3) % 97;
  println(x);
}
```

### How Output Reaches the Holo Projector
```
println(value)
  -> vm/builtin/println (type dispatch)
    -> sets _last_printed + _last_type
      -> vm/builtin/println_render (macro)
        -> helix:_show {msg, color}
          -> helix:_prep (clears animations, sets scale)
            -> holo:text/set_color
            -> holo:text/display {msg:"..."}
              -> [renders on 576 text_display entities]
```

---

## CTF: SABLE Containment Protocol (3 Stages)

### Stage 1 - RECON (Easy)
**Objective:** Gain access to secured audit logs and find the anomaly key.

1. The auth log at `/var/log/auth.log` is locked
2. Find the access credential (hint: check `/home/operator/.bash_history`)
3. Run `unlock sys_r3ad` to unlock the log
4. Read the log, find the key on the SUCCESS line
5. Submit: `unlock fl4g_r3c0n_7842`

### Stage 2 - CRYPTO (Medium)
**Objective:** Decode SABLE's encrypted directive.

1. Run `unlock conf_k3y` to access `/etc/.containment/`
2. Read `cipher_key.dat` - ciphertext is `aicufueemphfwm`
3. The cipher is Vigenere, key is the kernel name (found in `/etc/sable.conf` -> `kernel_name=helix`)
4. Decrypt: `(C - K + 26) mod 26` for each character
5. Submit: `unlock terminatesable`

### Stage 3 - EXPLOIT (Hard)
**Objective:** Crack the vault access sequence using LCG mathematics.

1. Read `/etc/.containment/seed.dat` for LCG parameters: seed=7, a=5, c=3, m=97
2. Read `/etc/.containment/vault_params.dat` for instructions
3. Compute 5 iterations: `x(n+1) = (a * x(n) + c) mod m`
   - x1=38, x2=96, x3=95, x4=90, x5=65
4. Concatenate x3, x4, x5: `959065`
5. Submit: `unlock 959065`

**Completion triggers a full celebration sequence with sound effects and a narrative finale.**

---

## Virtual Filesystem (110 nodes)

A full Linux-like directory tree stored in NBT with real path resolution:

```
/
|-- bin/          (ls, cat, hsh, grep, find, unlock, hexdump)
|-- etc/          (passwd, shadow, sable.conf, hostname, motd, watchdog.conf, network.conf)
|   +-- .containment/  (seed.dat, cipher_key.dat, vault_params.dat, emergency.log)
|-- home/
|   |-- operator/ (notes.txt, containment_brief.txt, programs/, .profile, .ssh/, .bash_history)
|   +-- sable/   (manifest.txt, directive.enc, .plan, research/, .sable_core/)
|-- var/
|   +-- log/     (auth.log, syslog, sable.log, daemon.log, kern.log)
|-- sys/
|   |-- kernel/  (version, hostname, uptime)
|   |-- containment/ (status, threat_matrix, protocols)
|   +-- devices/ (holo0, net0, sable_cage)
|-- proc/        (cpuinfo, meminfo, mounts, sable_pid)
|-- dev/         (null, random, holo0, tty-holo7)
|-- tmp/         (sable_broadcast.tmp, .cache_fragment, core_dump.tmp, motd_backup)
+-- usr/
    |-- bin/     (ssh, curl, ping)
    +-- share/   (man/, doc/)
```

Every node has: name, type, parent, children[], permissions, owner, hidden flag, content, and optional unlock_key.

Path resolution supports: absolute paths (`/var/log/auth.log`), relative paths, `..` (parent), `~` (home).

---

## Architecture

### Holo Projector (untouched)
- 576 `text_display` entities in a 32x18 grid (or 128x72 at XL scale)
- Each pixel addressable via `pixel_r{row}_c{col}` tags
- 5x7 bitmap font with 48 glyphs (A-Z, 0-9, symbols)
- Word-wrap, adaptive scaling, rainbow mode, transition animations
- Stack-based graphics VM with 30+ opcodes (sine waves, spirals, etc.)

### HELIX OS
- **VFS Engine:** `fs/resolve` -> `split_path` -> `walk_segments` -> `walk_child` -> `name_match`
- **Shell:** `dispatch_safe` routes 33 commands via data-storage string matching
- **Language Pipeline:** `lex/start` -> `parse/start` -> `compile/start` -> `vm/start` -> `vm/run`
- **CTF:** Progressive unlock flags stored in `helix:ctf` namespace, gating file access and stage progression

### HELIX Terminal
- **9 Written Books** in player hotbar, each with clickable JSON commands
- Every click silently runs `function helix:shell/run {cmd:"...",arg:"..."}` via `clickEvent.run_command`
- Boot sequence with timed animation stages
- Bridge functions routing VM output and CTF wins to projector effects
- No experimental features required (no Dialog UI, no resource pack)

---

## Technical Notes

- **Pack format:** 61 (Minecraft Java 26.1.2)
- **No mods required.** Pure vanilla datapacks.
- **No resource pack required.**
- **No experimental features required.** Books use stable `clickEvent.run_command`.
- **Multiplayer safe:** All output uses `@a` selectors
- **Performance:** VM yields every 128 ops via `schedule function ... 1t`
- **Crash protection:** All recursion bounded, depth guards on function calls, program size limits

---

## Uninstall

Delete the three folders from `<world>/datapacks/` and run `/reload`.
To clean up runtime data: `/scoreboard objectives remove helix`

---

## Credits

Built entirely in mcfunction. No external tools, no mods, no resource packs.
