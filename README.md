
# **Open-Source Phase-Programmable LNA (PP-LNA) for NAVIC L5 Beamforming**

## 1️⃣ Open-Source IC Design — what it actually means

For decades, chip design was locked behind:

* **expensive licensed EDA tools**
* **closed PDKs and restricted foundry access**
* **heavy NDAs and gatekeeping**

![Chip Design Requirements](images/chip_infra.png)


Open-source IC design breaks that wall.

* **Open-source EDA tools** → free tools for schematic, simulation, layout, EM, verification
* **Open PDKs** → openly documented transistor models and rules you can legally design with
* **Community sharing** → anyone can learn, build, publish, and collaborate

![Open-Source IC design breaks barriers](images/open_source_icdesign.png)

Result: chip design is no longer only for big companies.
Students, researchers, startups — even hobbyists — can design real silicon.

![Comparison: Open-Source Vs Commercial EDA Software](images/opensource_vs_commercial_eda.png)

This project exists because that ecosystem now makes it possible.

---

## 2️⃣ How open EDA tools and PDKs work together

Think of a construction project:

* **PDK = building code + material specs**
  (what devices exist, limits, models, rules)

* **EDA tools = architect + engineering software**
  (draw circuits, simulate behavior, design layout, verify)

Without a PDK → you can’t fabricate.
Without tools → you can’t design.

Open-source provides both — legally, freely, and transparently.
This design uses the **IHP SG13G2 open PDK** with open-source tools end-to-end.

---

## 3️⃣ What is an LNA — and why you should care

A **Low Noise Amplifier (LNA)** sits right after the antenna. Its job:

> **Boost extremely weak signals while adding as little noise as possible.**

If the LNA is noisy, everything downstream degrades — permanently.

### Easy analogy

Think of the **LNB on a satellite TV dish**.
It grabs a faint signal from space and strengthens it before it travels through the cable.
If it were noisy, your TV would be useless.

This LNA plays a similar role — but for **satellite navigation signals**.

---

## 4️⃣ What this open-source project delivers

This PP-LNA targets **NAVIC GNSS (L5 band, 1176.45 MHz)** and is designed for:

* anti-jamming
* anti-spoofing
* controlled reception (CRPA) antenna systems

It integrates:

* ✔️ a low-noise CMOS LNA
* ✔️ a programmable RF phase shifter

Multiple PP-LNAs (one per antenna element) can be phase-aligned and combined **in analog**, giving beamforming capability **without needing multiple ADC channels**.

---

## 5️⃣ Architecture overview

* One PP-LNA per antenna
* RF phase control inside each path
* External RF combiner (e.g., Wilkinson)
* Standard NAVIC receiver chain remains unchanged

---

## 6️⃣ Documentation

See `docs/` for deeper details:

* system motivation and overview
* LNA architecture and design strategy
* phase-shifter choices and placement
* calibration and beamforming behavior

---

## 7️⃣ Current status

* [ ] LNA finalized
* [ ] Phase shifter integration
* [ ] System-level beamforming demonstration

---

## ⚠️ Disclaimer

This is a **research / proof-of-concept** design — not a production IC.



