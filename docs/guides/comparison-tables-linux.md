# Cross-library comparison tables

**Regenerate with every performance-relevant change** (rule in AGENTS.md): in the harness repository `piece-tree-bench`, `PIECE_TREE_PATH=<checkout>/crates/piece-tree tools/run.sh <dir>` with nothing else running (~25 minutes), then `python3 -I tools/tables.py <dir> <path of this file> [<platform>]`.

The full results of the last cross-library run, one section per corpus, for every library and both allocators. Nothing here is a claim by itself: the reading, the noise and the history are in [benchmarks.md](benchmarks.md).

**What was run**: the harness `piece-tree-bench` (a separate repository, not part of this workspace; four libraries in one binary, fat LTO, `codegen-units = 1`): piece-tree (this tree, with `Text::insert_mut` for the typing row, D19), ropey 1.6.1, ropey 2.0.0-beta.1, and Zed's `Rope` on `sum_tree` (`77228009dd267dcf8ab9a20eef5802b2a8ea4afa`). Intel Core i5-8365U (Whiskey Lake laptop, 4 cores / 8 threads, intel_pstate governor `performance`, turbo on), Linux 7.3 (CachyOS), glibc 2.44, x86_64 built without `target-cpu=native` (SSE2 newline scan), 3 runs per corpus and allocator, alternating the system-allocator and the mimalloc build. Each cell is **ns/op, the minimum over the 3 runs of each run's minimum of 7**, followed by the median over the 3 runs of each run's median in parentheses; bold marks the best library of the row (ties within the printed digit are both bold). "lead" is the second best over the best. Per-corpus texts: `synthetic` (generated source-like lines), `rust` (~64 MB of Rust sources from the cargo registry, wrapped when shorter than requested), `cjk` (CJK-heavy synthetic).

Reading hints (from the noise section of benchmarks.md): reads and loads repeat within a few percent; the edit rows (typing with clone per key, paste, random edits, batch) can differ 10-20% between runs of the same binary, and 5-10% between two builds of the same code. Differences under ~10% are not established.

## Synthetic corpus

### Synthetic corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | 0.5 (0.5) | 0.8 (1.0) | **0.4 (0.5)** | 0.6 (0.7) | ropey 2 beta | 1.25x |
| load 50MB from String (per byte) | **0.2 (0.3)** | 0.8 (1.1) | 0.4 (0.5) | 0.6 (0.8) | piece-tree | 2.00x |
| line() random, loaded | **51.4 (67.9)** | 701 (954) | 853 (1 172) | 730 (781) | piece-tree | 13.64x |
| typing 10k chars in 1MB | **25.5 (33.5)** | 253 (308) | 99.1 (111) | 19 576 (21 596) | piece-tree | 3.89x |
| typing 10k, clone per key | **127 (241)** | 1 497 (1 792) | 595 (1 035) | 25 149 (29 621) | piece-tree | 4.69x |
| line() all, after typing | **11.5 (16.0)** | 357 (400) | 385 (418) | 266 (292) | piece-tree | 23.10x |
| line() 10x50 windows, typed | **12.6 (13.9)** | 376 (431) | 430 (480) | 260 (288) | piece-tree | 20.66x |
| backspace 10k | **45.9 (51.3)** | 308 (375) | 151 (188) | 21 819 (23 424) | piece-tree | 3.29x |
| offset_to_line random, typed | **23.9 (27.1)** | 207 (235) | 118 (150) | 57.8 (63.1) | piece-tree | 2.42x |
| paste mid-piece 1k on 10MB | **667 (743)** | 2 005 (2 519) | 1 212 (1 642) | 28 489 (30 303) | piece-tree | 1.82x |
| random edits 1k+1k on 10MB | **615 (697)** | 1 792 (2 511) | 990 (1 393) | 29 368 (32 411) | piece-tree | 1.61x |
| line() all, after edits | **26.9 (30.9)** | 406 (421) | 437 (446) | 307 (320) | piece-tree | 11.41x |
| batch 1k edits, one pass, 10MB | **178 (209)** | 1 311 (1 857) | 785 (842) | 8 036 (8 763) | piece-tree | 4.41x |

### Synthetic corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.3 (0.3)** | 0.6 (0.8) | 0.4 (0.4) | 0.7 (0.9) | piece-tree | 1.33x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.6 (0.7) | 0.4 (0.4) | 0.6 (0.8) | piece-tree | 2.00x |
| line() random, loaded | **48.9 (53.0)** | 666 (791) | 843 (922) | 744 (802) | piece-tree | 13.61x |
| typing 10k chars in 1MB | **27.0 (29.3)** | 212 (249) | 100 (104) | 19 442 (21 066) | piece-tree | 3.71x |
| typing 10k, clone per key | **163 (183)** | 1 019 (1 335) | 672 (1 006) | 25 547 (29 863) | piece-tree | 4.12x |
| line() all, after typing | **11.8 (13.2)** | 376 (431) | 377 (396) | 265 (283) | piece-tree | 22.45x |
| line() 10x50 windows, typed | **12.0 (13.0)** | 380 (425) | 359 (403) | 272 (311) | piece-tree | 22.62x |
| backspace 10k | **49.4 (52.2)** | 342 (397) | 146 (177) | 21 992 (25 464) | piece-tree | 2.95x |
| offset_to_line random, typed | **28.4 (31.3)** | 220 (236) | 117 (132) | 51.9 (61.1) | piece-tree | 1.83x |
| paste mid-piece 1k on 10MB | **573 (679)** | 1 882 (2 181) | 1 247 (1 518) | 30 603 (35 784) | piece-tree | 2.18x |
| random edits 1k+1k on 10MB | **546 (642)** | 1 704 (2 020) | 1 104 (1 354) | 32 008 (34 447) | piece-tree | 2.02x |
| line() all, after edits | **24.6 (30.2)** | 397 (412) | 420 (430) | 310 (328) | piece-tree | 12.61x |
| batch 1k edits, one pass, 10MB | **157 (210)** | 1 398 (1 545) | 842 (903) | 8 113 (10 071) | piece-tree | 5.35x |

## Rust sources corpus

### Rust sources corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | 0.5 (0.6) | 0.7 (0.9) | **0.4 (0.5)** | 0.6 (0.7) | ropey 2 beta | 1.25x |
| load 50MB from String (per byte) | **0.2 (0.3)** | 0.7 (0.9) | 0.4 (0.5) | 0.6 (0.7) | piece-tree | 2.00x |
| line() random, loaded | **63.0 (80.3)** | 700 (942) | 825 (952) | 700 (732) | piece-tree | 11.10x |
| typing 10k chars in 1MB | **26.9 (35.1)** | 223 (271) | 98.0 (112) | 17 444 (18 728) | piece-tree | 3.64x |
| typing 10k, clone per key | **126 (250)** | 1 420 (1 672) | 584 (1 113) | 22 082 (25 253) | piece-tree | 4.63x |
| line() all, after typing | **12.7 (17.5)** | 344 (398) | 362 (393) | 243 (264) | piece-tree | 19.14x |
| line() 10x50 windows, typed | **13.7 (14.1)** | 347 (398) | 385 (433) | 254 (288) | piece-tree | 18.56x |
| backspace 10k | **48.8 (51.4)** | 330 (350) | 157 (176) | 19 068 (21 443) | piece-tree | 3.21x |
| offset_to_line random, typed | **25.9 (33.0)** | 170 (185) | 110 (134) | 57.5 (68.7) | piece-tree | 2.22x |
| paste mid-piece 1k on 10MB | **627 (899)** | 1 738 (1 861) | 1 055 (1 289) | 27 430 (32 275) | piece-tree | 1.68x |
| random edits 1k+1k on 10MB | **507 (642)** | 1 587 (1 799) | 1 023 (1 306) | 27 823 (31 829) | piece-tree | 2.02x |
| line() all, after edits | **25.6 (34.0)** | 403 (428) | 413 (438) | 292 (301) | piece-tree | 11.41x |
| batch 1k edits, one pass, 10MB | **167 (214)** | 1 344 (1 695) | 739 (828) | 8 346 (9 508) | piece-tree | 4.42x |

### Rust sources corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.3 (0.3)** | 0.6 (0.9) | 0.4 (0.4) | 0.7 (1.0) | piece-tree | 1.33x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.6 (0.7) | 0.4 (0.5) | 0.7 (0.8) | piece-tree | 2.00x |
| line() random, loaded | **54.7 (59.4)** | 659 (836) | 826 (945) | 718 (790) | piece-tree | 12.04x |
| typing 10k chars in 1MB | **25.7 (31.1)** | 244 (260) | 90.9 (132) | 17 259 (19 010) | piece-tree | 3.54x |
| typing 10k, clone per key | **153 (215)** | 1 074 (1 663) | 650 (961) | 23 767 (27 312) | piece-tree | 4.24x |
| line() all, after typing | **11.1 (12.0)** | 340 (391) | 355 (396) | 246 (261) | piece-tree | 22.18x |
| line() 10x50 windows, typed | **10.4 (12.1)** | 333 (392) | 356 (369) | 243 (277) | piece-tree | 23.39x |
| backspace 10k | **43.4 (47.7)** | 315 (423) | 146 (151) | 19 648 (22 098) | piece-tree | 3.38x |
| offset_to_line random, typed | **21.5 (25.9)** | 185 (205) | 110 (122) | 56.0 (69.7) | piece-tree | 2.60x |
| paste mid-piece 1k on 10MB | **498 (530)** | 1 598 (1 939) | 1 225 (1 295) | 30 963 (37 298) | piece-tree | 2.46x |
| random edits 1k+1k on 10MB | **471 (525)** | 1 617 (1 846) | 1 016 (1 334) | 31 601 (35 960) | piece-tree | 2.16x |
| line() all, after edits | **25.9 (28.8)** | 394 (406) | 411 (419) | 291 (305) | piece-tree | 11.22x |
| batch 1k edits, one pass, 10MB | **160 (194)** | 1 372 (1 520) | 865 (930) | 8 548 (8 845) | piece-tree | 5.40x |

## CJK corpus

### CJK corpus, System allocator (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | 0.5 (0.6) | 0.8 (1.0) | **0.4 (0.5)** | 0.7 (0.7) | ropey 2 beta | 1.25x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.7 (0.8) | 0.4 (0.6) | 0.6 (0.7) | piece-tree | 2.00x |
| line() random, loaded | **49.1 (62.8)** | 728 (939) | 847 (908) | 742 (802) | piece-tree | 14.82x |
| typing 10k chars in 1MB | **27.9 (31.4)** | 224 (251) | 91.6 (102) | 17 636 (19 207) | piece-tree | 3.28x |
| typing 10k, clone per key | **145 (234)** | 1 504 (1 717) | 571 (1 009) | 22 659 (25 663) | piece-tree | 3.95x |
| line() all, after typing | **11.5 (13.6)** | 365 (453) | 377 (420) | 268 (301) | piece-tree | 23.33x |
| line() 10x50 windows, typed | **12.5 (13.4)** | 389 (405) | 428 (497) | 268 (305) | piece-tree | 21.48x |
| backspace 10k | **44.4 (46.4)** | 283 (358) | 193 (205) | 20 172 (21 756) | piece-tree | 4.34x |
| offset_to_line random, typed | **23.0 (24.2)** | 183 (210) | 115 (150) | 54.0 (60.3) | piece-tree | 2.35x |
| paste mid-piece 1k on 10MB | **601 (646)** | 1 930 (2 223) | 1 124 (1 314) | 26 947 (31 154) | piece-tree | 1.87x |
| random edits 1k+1k on 10MB | **546 (594)** | 1 882 (2 106) | 1 010 (1 295) | 29 201 (33 244) | piece-tree | 1.85x |
| line() all, after edits | **27.1 (34.6)** | 416 (451) | 417 (454) | 330 (340) | piece-tree | 12.20x |
| batch 1k edits, one pass, 10MB | **168 (176)** | 1 577 (1 687) | 833 (883) | 8 316 (9 794) | piece-tree | 4.95x |

### CJK corpus, mimalloc as global allocator of the whole binary (3 runs)

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | best | lead |
|---|---:|---:|---:|---:|---|---:|
| load 50MB from &str (per byte) | **0.3 (0.3)** | 0.6 (0.8) | 0.4 (0.4) | 0.7 (1.1) | piece-tree | 1.33x |
| load 50MB from String (per byte) | **0.2 (0.2)** | 0.6 (0.7) | 0.4 (0.4) | 0.7 (0.9) | piece-tree | 2.00x |
| line() random, loaded | **39.1 (43.5)** | 670 (860) | 835 (1 061) | 743 (840) | piece-tree | 17.12x |
| typing 10k chars in 1MB | **27.6 (31.6)** | 198 (245) | 93.7 (131) | 18 177 (20 503) | piece-tree | 3.39x |
| typing 10k, clone per key | **189 (223)** | 998 (1 325) | 656 (1 064) | 24 038 (32 752) | piece-tree | 3.47x |
| line() all, after typing | **12.7 (14.2)** | 372 (443) | 370 (414) | 278 (312) | piece-tree | 21.86x |
| line() 10x50 windows, typed | **12.2 (14.4)** | 389 (459) | 371 (405) | 295 (330) | piece-tree | 24.16x |
| backspace 10k | **45.2 (53.3)** | 359 (372) | 146 (162) | 20 579 (24 537) | piece-tree | 3.22x |
| offset_to_line random, typed | **24.8 (27.9)** | 204 (236) | 118 (124) | 51.6 (62.7) | piece-tree | 2.08x |
| paste mid-piece 1k on 10MB | **604 (635)** | 2 014 (2 302) | 1 329 (1 527) | 31 658 (36 426) | piece-tree | 2.20x |
| random edits 1k+1k on 10MB | **546 (594)** | 1 603 (2 102) | 1 112 (1 501) | 33 810 (36 575) | piece-tree | 2.04x |
| line() all, after edits | **26.6 (29.5)** | 421 (433) | 412 (445) | 329 (350) | piece-tree | 12.36x |
| batch 1k edits, one pass, 10MB | **157 (178)** | 1 511 (1 736) | 901 (964) | 8 303 (9 452) | piece-tree | 5.72x |
