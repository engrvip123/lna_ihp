# Phase-Programmable LNA (PP-LNA) for NAVIC L5 Beamforming

This design is planned for for analog beamforming in **NAVIC L5-band (1176.45 MHz) GNSS receivers** for CRPA implementation.

The PP-LNA integrates:
- A low-noise CMOS LNA, and
- A programmable RF phase shifter

Multiple PP-LNA instances can be combined at system level using
an external RF combiner to realize analog beamforming or CRPA-like reception.

## Motivation
Conventional NAVIC receivers use a single antenna and RF chain.
This design explores a modular, reusable RF front-end that enables
beamforming using multiple antennas without requiring multi-channel ADCs.

## Architecture Overview
- One PP-LNA per antenna element
- Phase alignment in RF
- External Wilkinson combiner
- Unmodified downstream NAVIC receiver chain

## Documentation
Detailed design rationale and architecture are available in the `docs/` directory:

- System overview and design objectives
- LNA architecture and design approach
- RF phase shifter selection and placement
- Beamforming operation and calibration strategy

## Status
- [ ] LNA finalized
- [ ] Phase shifter integration
- [ ] System-level beamforming demo

## Disclaimer
This is a **research / proof-of-concept design** and not a production GNSS IC.

