footer: Carsten Wulff 2022
slidenumbers:true
autoscale:true
theme: Plain Jane, 1
text:  Helvetica
header:  Helvetica

<!--pan_skip: -->

## TFE4188 - Lecture 1
# What I expect you to know

## [Source](https://github.com/wulffern/aic2022/blob/main/lectures/l1_need_to_know.md)

---

<!--pan_title: What I expect you to already know -->

<!--pan_doc: 

There is quite  few things I expect you to know something about. Below is an excerpt of the slideset from design of integrated circuits in 
2021.

-->

#[fit] Quantum Mechanics

---
# Want to go deeper on the physics

[Feynman lectures on physics](https://www.feynmanlectures.caltech.edu)

[MIT 8.04 Quantum Mechanics I](https://ocw.mit.edu/courses/physics/8-04-quantum-physics-i-spring-2013/lecture-videos/)

[MIT 8.05 Quantum Mechanics II](https://ocw.mit.edu/courses/physics/8-04-quantum-physics-i-spring-2013/lecture-videos/)

---

## Classical equations
Kinetic energy + potential energy = Total Energy

$$\frac{1}{2 m} p^2 + V = E$$ 
 
where $$ p = m v $$, $$m$$ is the mass, $$v$$ is the velocity and $$V$$ is the potential

---

## Quantum mechanical

State of a fermion is fully described by the probability amplitude $$\psi(x,t)$$, also called the wave function of a particle.

The total energy of a particle is described by the Schrodinger Equation

$$ \frac{1}{2 m} \frac{\hbar}{j^2} \frac{\partial^2}{\partial^2 x}\psi(x,t) + V(x)\psi(x,t) = -\frac{\hbar}{j}\frac{\partial}{\partial t} \psi(x,t)$$

---
## Quantum mechanics key concepts

To determine the moment or energy of multiple particles, you cannot consider them discrete entities. For example, the probabilty of finding a free electron in a particular location is given by

$$P_1(x) = \int_{x_1}^{x_2}  |\psi_1(x,0)|^2$$, where $$P_1 = \int_{-\infty}^{\infty} |\psi_1(x,0)| = 1$$


However, if we have two electrons, described by $$\psi_1(x,0)$$ and $$\psi_2(x,0)$$, then  $$P_{12}(x) \ne P_1(x) + P_2(x)$$, but rather $$P_{12}(x) = \int_{x_1}^{x_2} |\psi_1(x,0) + \psi_2(x,0)|^2$$

It is the probability amplitudes that add, not the probabilities. And to make things more interesting, one solution to the Schrodinger equation is $$\psi(x,t) = Ae^{j(kx - \omega t)}$$, where $$k$$ is the wave number, and the $$\omega$$ is the angular frequency. This is a complex function of position and time!

---
# Silicon crystal

[.column]
A pure silicon crystal can be visualized by a smallest repetable unit cell.

The unit cell is a face-centered cubic crystal with a lattice spacing of approx $$a = 5.43$$Å

- 8 corner atoms
- 6 face atoms
- 4 additional atoms spaced at 1/4 lattice spacing from 3 face atoms and 1 corner atom  

Nearest neighbor $$d = \frac{1}{2}\left(a \sqrt{2}\right)$$

[.column]
![fit](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Silicon-unit-cell-3D-balls.png/628px-Silicon-unit-cell-3D-balls.png)

---
## Energy levels of electrons in solids (current)

Electrons can only exist in discrete energy levels, given by the solutions to the Schrodinger equation.
Since the probability amplitudes add for electrons in close proximity, then for crystals it's more complicated. 

![inline](https://www.researchgate.net/profile/Arnab-Pariari/publication/333131266/figure/fig1/AS:759043060682752@1557981376301/A-schematic-diagram-to-show-the-discrete-energy-levels-of-an-isolated-atom-and-energy.jpg)

---
## Movement of electrons in solids

Electrons in solids can move if there are allowed energy states they can occupy.

In a semiconductor the valence band and first conduction band is separated by a band-gap (in conductors the bands overlap)

There are two options in semiconductors

- The valence band is not filled (holes), so electrons can move
- The electrons are given sufficient energy to reach conduction band, and are "free" to move

---
# Silicon crystal facts

Although we know to an exterme precision exactly how electrons behave (Schrodinger equation). It is insainly complicated to compute the movement of electrons in a real silicon crystal with the Shrodinger equation.

Most "facts" about silicon crystal, like bandgap, effective mass, and mobility of electrons (or holes) are emprically determined.

In other words, we make assumptions, and grossly oversimplify, in order to handle complexity.

---

## Useful constants

$$ 
q = 1.6 \times 10^{-19} [C] 
$$ 
$$ 
k = 1.38 \times 10^{-23} [J/K] 
$$

$$ 
\mu_0 = \frac{2 \alpha}{q^2}\frac{h}{c}  = 1.26 \times 10^{-6} [H/m] 
$$

$$ 
\epsilon_0 = \frac{1}{\mu_0 c^2} = 8.854 \times 10^{-12} [F/m]  
$$ 

where q is unit charge, k is Boltzmann's constant,  h is Plancks constant, c is speed of light and alpha is the fine structure constant

---

## Spice Models

[http://bsim.berkeley.edu/models/bsim4/](http://bsim.berkeley.edu/models/bsim4/)

[http://bsim.berkeley.edu/BSIM4/BSIM480.zip](http://bsim.berkeley.edu/BSIM4/BSIM480.zip)


---

## Intrinsic carrier concentration


$$ n_i \approx 1 \times 10^{16} [1/m^3]  = 1 \times 10^{10} [1/cm^3]$$ at 300 K

$$ n_i^2 = n_0 p_0 $$

$$ n_i = \sqrt{N_C N_V}e^{\frac{-E_g}{2kT}} $$

$$ N_C = 2\left(\frac{2 \pi m_{n}^* k T}{h^2}\right)^{3/2} $$
$$ N_V = 2\left(\frac{2 \pi m_{p}^* k T}{h^2}\right)^{3/2} $$


---

Solid state physics: 

$$ n_i = \sqrt{N_C N_V}e^{\frac{-E_g}{2kT}} $$

BSIM 4.8, Intrinsic carrier concentration (page 122)

$$
n_i = 1.45e10\frac{TNOM}{300.15}\sqrt{\frac{T}{300.15}}exp\left[21.5565981 - \frac{qE_g(TNOM)}{2 k_b T}\right]
$$

---

## Simulate PN Junctions

Sesame is a Python3 package for solving the drift diffusion Poisson equations for multi-dimensional systems using finite differences.

[Install instructions](https://sesame.readthedocs.io/en/latest/pre/INSTALL_beginner.html)



<sub>Semiconductor current-flow equations (diffusion and degeneracy), R.Stratton,
IEEE Transactions on Electron Devices
[https://ieeexplore.ieee.org/document/1477063](https://ieeexplore.ieee.org/document/1477063)</sub>

![right fit](../media/current_flow.png)

---

![fit](../media/sesame_setup.png)

---

![fit](../media/sesame_sim.png)

---

![fit](../media/sesame_result.png)

---

#[fit] Current Mirrors

---

![fit](../media/fig_current_mirrors.pdf)

---

![fit](../media/cm_gain_boost.pdf)

---
<sub>["High speed, high gain OTA in a digital 90nm CMOS technology" Berntsen, Wulff, Ytterdal, Norchip 2005](https://ieeexplore.ieee.org/document/1597006)</sub>


![original fit](../media/berntsen.png)

<!-- http://www.wulff.no/publications/berntsen.pdf  -->
---

#[fit] Large signal vs <sub><sub><sub> small signal </sub></sub></sub>

---

![original fit](../media/ls_vs_ss.png)

---

# $$ I \ne i $$

# $$ V \ne v $$


![left fit](../media/diode.png)

---


# $$ I  =  I_{bias} +  i $$

# $$ V = V_{bias} +  v $$


![left fit](../media/diode.png)

---


![left fit](../media/diode.png)

# Current Mirror

$$M_1$$ is diode connected ($$V_G = V_D$$)


![inline 200%](../media/fig_cm.pdf)

---

#[fit] Amplifiers

---

#[fit] Source follower

---
# Source follower

Input resistance $$\approx \infty$$

Gain $$ A = \frac{v_o}{v_i}$$

Output resistance $$r_{out}$$

![left fit](../media/sf_ls.png)

---

![right fit](../media/why_sf_not.png)
![left fit](../media//why_sf.png)

---

Assume 100 electrons

[.column]


$$ \Delta V  = Q/C  = -1.6 \times 10^{-19} \times 100 / (1\times 10^{-15}) = - 16\text{ mV} $$ 

![inline fit](../media/why_sf.png)

[.column]

$$ \Delta V  = Q/C  = -1.6 \times 10^{-19} \times 100 / (1\times 10^{-12}) = - 16\text{ uV} $$ 


![inline fit](../media/why_sf_not.png)

---


# Common gate 

Input resistance $$ r_{in}  \approx \frac{1}{g_m}\left(1 + \frac{R_L}{r_{ds}}\right) $$

Gain $$ \frac{v_o}{v_i} = 1 + g_m r_{ds} $$

Output resistance $$r_{out} = r_{ds}$$

![left fit](../media/cg_ls_rin.png)

---

# Common source

Input resistance $$r_{in} \approx \infty$$

Output resistance $$r_{out}  = r_{ds}$$, it's same circuit as the output of a current mirror

Gain $$ \frac{v_o}{v_i} = - g_m r_{ds}$$

![left fit](../media/cs_ls_a.png)

---

# Diff pairs are cool

![left fit](../media/df_ls_a.png)

 Can choose between 

 $$ v_o = g_m r_{ds} v_i$$

 and 

 $$ v_o = -g_m r_{ds} v_i$$
 
 by flipping input (or output) connections

---

# Operational transconductance amplifiers

---

![inline](../media/ota.png)

---

#[fit] Digital

---

## Rules for inverting static CMOS logic

**Pull-up**
OR $$\Rightarrow$$ PMOS in series $$\Rightarrow$$ POS 
AND $$\Rightarrow$$ PMOS in paralell $$\Rightarrow$$ PAP

<sub>**Pos**traumatic **Pap**aya </sub>

**Pull-down**
OR $$\Rightarrow$$ NMOS in paralell $$\Rightarrow$$ NOP 
AND $$\Rightarrow$$ NMOS in series $$\Rightarrow$$ NAS 


![right fit](../media/nand_tr.png)

---

[.table-separator: #000000, stroke-width(1)] 
[.table: margin(8)]

## $$ \text{Y} = \overline{\text{AB}} = \text{NOT ( A AND B)}$$

 **AND**
 PU $$\Rightarrow$$ PMOS in paralell
 PD  $$\Rightarrow$$ NMOS in series
 
 <sub>**Pos**traumatic **Pap**aya </sub>


![right fit ](../media/nand_tr.png)


| A | B | <sub>NOT(A AND B)</sub> |
|:---|:---|:---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

---
## SUN\_TR\_GF130N 

ssh://aurora/home/wulff/repos/sun\_tr\_gf130n.git

| Cell        | Description                                         |
|:------------|:----------------------------------------------------|
| ANX1\_CV     | AND                                                 |
| BFX1\_CV     | Buffer                                              |
| DFRNQNX1\_CV | D Flip-flop with inverted output and inverted reset |
| IVTRIX1\_CV  | Tristate inverter, enable                           |
| IVX1\_CV     | Inverter                                            |
| NDTRIX1\_CV  | Tristate NAND                                       |
| NDX1\_CV     | NAND                                                |
| NRX1\_CV     | NOR                                                 |
| ORX1\_CV     | OR                                                  |
| SCX1\_CV     | Schmitt-trigger                                     |
| TAPCELLB\_CV | Bulk connection                                     |
| TIEH\_CV     | Tie high                                            |
| TIEL\_CV     | Tie low                                             |

---

![50%](../media/inv.png)  ![inline](../media/nor_tr.png) ![inline](../media/nand_tr.png)

---

# $$SR$$-Latch

Use boolean expressions to figure out how gates work. 

Remember De-Morgan 

$$\overline{AB}  = \overline{A}+ \overline{B}$$
$$\overline{A+B}  = \overline{A} \cdot \overline{B}$$


 $$ Q = \overline{R \overline{Q}} = \overline{R} +
\overline{\overline{Q}} = \overline{R} + Q $$

 $$ \overline{Q} = \overline{S Q} = \overline{S} +
\overline{Q} = \overline{S} + \overline{Q} $$

![right 200% ](../media/sr.pdf)

---

# $$SR$$-Latch

$$ Q = \overline{R} + Q $$, $$ \overline{Q} =\overline{S} + \overline{Q} $$

| S | R | Q | ~Q |
|:---|:---|:---| :---|
| 0 | 0 | X | X |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | Q | ~Q |


![right 200% ](../media/sr.pdf)

---

# D-Latch

| C | D | Q | ~Q |
|:---|:---|:---| :---|
| 0 | X | Q | ~Q |
| 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 |


![right 200% ](../media/dlatch.pdf)


---
[.background-color: #000000]
[.text: #FFFFFF]
# Digital can be synthesized in conductive peanut butter <sub><sub> Barrie Gilbert? </sub></sub>

---


# What about $$\text{Y} = \text{AB}$$ and $$\text{Y} = \text{A} + \text{B}$$?


[.column]

# $$\text{Y} = \text{AB} = \overline{\overline{\text{AB}}}$$

**Y** = **A** AND **B** = NOT( NOT( **A** AND **B** ) )

![inline](../media/and.png)

[.column]

# $$\text{Y} = \text{A+B} = \overline{\overline{\text{A+B}}}$$

**Y** = **A** OR **B** = NOT( NOT( **A** OR **B** ) )

![inline](../media/or.png)


---

# AOI22: and or invert

 **Y** = NOT( **A** AND **B** OR **C** AND **D**) 

 $$\text{Y} =  \overline{\text{AB} + \text{CD}}$$
 
![right fit](../media/an2oi.pdf)

 <sub>**Pos**traumatic **Pap**aya</sub> 

---

![original fit](../media/inv_tg.pdf)

---
[.table-separator: #000000, stroke-width(1)] 
[.table: margin(8)]

# Tristate inverter

| E | A | Y |
|:---|:---|:---|
| 0 | 0 | Z |
| 0 | 1 | Z |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

![right fit](../media/ivtrix.pdf)

---

[.table-separator: #000000, stroke-width(1)] 
[.table: margin(8)]

# Mux

| S |  Y |
|:---|:---|
| 0 | NOT(P1) |
| 1 | NOT(P0) |

![right fit](../media/mux.pdf)

---
D-Latch

![original fit](../media/latch.pdf)

---
D-Flip Flop 

![original fit](../media/d_ff.pdf)

---

![original fit](../media/digital_ff_comb.pdf)

---
# SystemVerilog

```verilog 
module counter(
               output logic [WIDTH-1:0] out,
               input logic              clk,
               input logic              reset
               );

   parameter WIDTH = 8;

   logic [WIDTH-1:0]                    count;
   always_comb begin
      count = out + 1;
   end

   always_ff @(posedge clk or posedge reset) begin
      if (reset)
        out <= 0;
      else
        out <= count;
   end

endmodule // counter
```

![right fit](../media/digital_ff_comb.pdf)

---


# There are other types of logic

[.column]
- True single phase clock (TSPC) logic
- Pass transistor logic
- Transmission gate logic
- Differential logic
- Dynamic logic

[.column]
Consider other types of logic "rule breaking", so you should know why you need it.

---

![inline 110%](../media/fig_sar_logic.pdf)

<sub><sub>Dynamic logic => [A Compiled 9-bit 20-MS/s 3.5-fJ/conv.step SAR ADC in 28-nm FDSOI for Bluetooth Low Energy Receivers](https://ieeexplore.ieee.org/document/7906479)</sub></sub>

---

# Elmore Delay

$$ t_{pd} \approx \sum_{\text{nodes}}{R_{\text{nodes}-to-source} C_i} $$

$$ = R_1C_1 + (R_1 + R_2)C_2 + ... + (R_1 + R_2 + ... + R_N) C_N$$

Good enough for hand calculation

![right fit](../media/elmore.pdf)

---
#[fit] Best number of stages

---

#[fit] Which has shortest delay?

![left fit](../media/path.pdf)

---

[.column]

![inline](../media/path.pdf)
![inline](../media/fig_logeffort.pdf)

[.column]

 $$H = C_{cout}/C_{in} = 64 $$

 $$G = \prod{g_i} = \prod{1} = 1$$

 $$B = 1$$

 $$F = GBH = 64$$

*One stage*
$$f = 64 \Rightarrow D = 64 + 1 = 65$$

*Three stage with $$f=4$$*
$$D_F = 12, p = 3 \Rightarrow D = 12 + 3 = 15$$

----
[.background-color: #000000]
[.text: #FFFFFF]

#[fit] For close to optimal delay, use $$f = 4$$ <sub><sub>(Used to be $$f=e$$)</sub></sub>

---


#[fit] Pick two

![right fit](../media/optimization.pdf)

---

#[fit] Power

---

# What is power?

Instantanious power: $$ P(t) = I(t)V(t)$$

Energy : $$ \int_0^T{P(t)dt} $$  [J]

Average power: $$\frac{1}{T} \int_0^T{P(t)dt} $$ [W or J/s]



---
# Power dissipated in a resistor

 Ohm's Law $$V_R = I_R R$$

 $$P_R = V_R I_R =  I_R^2 R  = \frac{V_R^2}{R} $$

---
# Charging a capacitor to $$V_{DD}$$

 Capacitor differential equation $$ I_C = C\frac{dV}{dt}$$

 $$E_{C}  = \int_0^\infty{I_C V_C dt} = \int_0^\infty{ C \frac{dV}{dt} V_C dt} = \int_0^{V_C}{C V dV} = C\left[\frac{V^2}{2}\right]_0^{V_{DD}} $$

 $$E_{C} = \frac{1}{2} C V_{DD}^2$$

---
# Energy to charge a capacitor to a voltage $$V_{DD}$$

 $$ E_{C} = \frac{1}{2} C V_{DD}^2$$
 
 $$ I_{VDD} = I_C = C \frac{dV}{dt}$$

 $$ E_{VDD} = \int_0^\infty{I_{VDD} V_{DD} dt} = \int_0^\infty{C \frac{dV}{dt} V_{DD} dt} = C V_{DD}\int_0^{V_{DD}}{dV} = C V_{DD}^2$$

 Only half the energy is stored on the capacitor, the rest is dissipated in the PMOS 

---
# Discharging a capacitor to $$0$$

$$ E_{C} = \frac{1}{2} C V_{DD}^2$$

Voltage is pulled to ground, and the power is dissipated in the NMOS

---
# Power consumption of digital circuits

$$E_{VDD} = C V_{DD}^2$$

In a clock distribution network (chain of inverters), every output is charged once per clock cycle

$$P_{VDD} = C V_{DD}^2 f$$

---
# Sources of power dissipation in CMOS logic

$$ P_{total} = P_{dynamic} + P_{static}$$ 

[.column]
**Dynamic power dissipation**

Charging and discharging load capacitances

*short-circut* current, when PMOS and NMOS conduct at the same time

$$P_{dynamic} = P_{switching} + P_{short circuit}$$

[.column]
**Static power dissipation**

Subthreshold leakage in OFF transistors

Gate leakage (tunneling current) through gate dielectric

Source/drain reverse bias PN junction leakage

$$P_{static} = \left( I_{sub} + I_{gate} + I_{pn} \right) V_{DD}$$

---
# $$ P_{switching}$$ in logic gates

Only output node transitions from low to high consume power from $$V_{DD}$$

Define $$P_i$$ to be the probability that a node is 1

Define $$\overline{P_i} = 1 - P_i$$ to be the probability that a node is 0

Define **activity factor ($$\alpha_i$$)** as the **probability of switching a node from 0 to 1**

If the probabilty is uncorrelated from cycle to cycle

$$\alpha_i = \overline{P_i}P_i$$

---
# Switching probability

Random data $$P = 0.5$$, $$\alpha = 0.25$$

Clocks $$\alpha = 1$$

![left fit](../media/tb_sw_prob.pdf)

---

# Strategies to reduce dynamic power

1. Stop clock
1. Stop activity
1. Reduce clock frequency
1. Turn off $$V_{DD}$$
1. Reduce $$V_{DD}$$

![right fit](../media/digital_ff_comb.pdf)

---

## Stop clock[^3]

![inline fit ](../media/stop_clock.pdf) 


[^3]: Often called *clock gating*

---

## Stop activity

![inline fit ](../media/logic.pdf)  ![inline fit ](../media/stop_activity.pdf) 

---
## Reduce frequency
![inline fit ](../media/reduce_freq.pdf) 

---
## Turn off power supply [^4]

![inline fit ](../media/powergate.pdf) 

[^4]: Often called power gating

---

### Reduce power supply ($$V_{DD}$$) 

![inline fit ](../media/reduce_vdd.pdf) 

---

#[fit] IC Process

---

# Metal stack

Often 5 - 10 layers of metal

|Metal |Material | Thickness |Purpose |
| :--: | :--:|:--:| :--: |
|Metal 1 - 2 | Copper| Thin | in gate routing|
|Metal 3-4 | Copper| Thicker| Between gates routing|
|Metal Z | Copper| Very thick|  Cross chip routing. Local Power/Ground routing|
|Metal Y | Copper| Ultra thick | Cross chip power routing. Often used for RF inductors.|
|RDL | Aluminium | Ultra tick | Can tolerate high forces during wire bonding.|

![right](https://skywater-pdk.readthedocs.io/en/main/_images/metal_stack.svg)

---
[.background-color: #000000]
[.text: #FFFFFF]

#[fit] Metal routing rules on IC

Odd numbers metals $$\Rightarrow$$ Horizontal routing (as far as possible)

Even numbers metals $$\Rightarrow$$ Vertical routing (as far as possible)

---

# Lumped model

Use 1-segment $$\pi$$-model for Elmore delay

![inline](../media/lumped_model.png)

<!-- Figure from lect14-wires Integrated Circuit Design slide set -->

---
# Wire resistance

 resistivity $$\Rightarrow \rho $$ [$$\Omega$$m]

 $$ R = \frac{\rho}{t}\frac{l}{w} = R_\square \frac{l}{w}$$

 $$ R_\square$$ = sheet resistance [$$\Omega/\square$$]

 To find resistance, count the number of squares

 $$ R = R_\square \times \text{# of squares}$$


---
# Most wires: Copper

[.column]

$$R_{sheet-m1} \approx \frac{1.7 \mu\Omega cm}{200 nm} \approx 0.1 \Omega/\square$$  
$$R_{sheet-m9} \approx \frac{1.7 \mu\Omega cm}{3 \mu m} \approx 0.006 \Omega/\square$$  

[.column]
**Pitfalls**

Cu atoms diffuse into silicon and can cause damage

Must be surrounded by a diffusion barrier

Difficult high current densities (mA/$$\mu$$m)
and high temperature (125 C)

---
# Contacts

Contacts and vias can have 2-20 $$\Omega$$ 

Must use many contacts/vias for high current wires

---

# Wire capacitance

# $$C_{total} = C_{top} + C_{bot} + 2C_{adj}$$

Dense wires has about $$0.2 \text{ fF/}\mu\text{m}$$

---
**Estimate delay of inverter driving a 1 mm long , 0.1 $$\mu m$$ wide metal 1 wire with inverter load at the end**

 $$R_{sheet} = 0.1 \Omega/\square$$ , $$R_{inv} = 1 k \Omega$$, 
 $$C_{w} = 0.2 fF/\mu m$$, $$C_{inv} = 1 fF$$

Use Elmore 
 $$t_{pd} = R_{inv}\frac{C_{wire}}{2} + (R_{wire} + R_{inv}) \left(\frac{C_{wire}}{2} + C_{inv}\right) $$
 $$= 1k \times 100f + (1k + 0.1 \times 1k/0.1)\times 101f = 0.3\text{ ns}$$ 

![right 150%](../media/wire_delay.pdf)

---
# Crosstalk

A wire with high capacitance to a neighbor

An aggressor (0-1, 1-0) injects charge into neighbor wire

**Increases delay**

**Noise on nonswitching wires**


![right fit](../media/crosstalk.pdf)

---

#[fit] FSM

---
# Mealy machine


An FSM where outputs depend on current state and inputs

![right fit](../media/mealy.pdf)

---
# Moore machine


An FSM where outputs depend on current state

![right fit](../media/moore.pdf)


---
# Mealy versus Moore

| Parameter | Mealy | Moore |
| :--: | :--: | :--: |
| Outputs | depend on input and current state | output depend on current state|
| States | Same, or fewer states than Moore | |
| Inputs | React faster to inputs | Next clock cycle |
| Outputs | Can be asynchronous | Synchronous|
| States | Generally requires fewer states for synthesis | More states than Mealy |
| Counter | A counter is not a mealy machine | A counter is a Moore machine |
| Design | Can be tricky to design | Easy | 

---
## dicex/sim/counter_sv/counter.v

```verilog
module counter(
               output logic [WIDTH-1:0] out,
               input logic              clk,
               input logic              reset
               );
   parameter WIDTH                      = 8;
   logic [WIDTH-1:0]                    count;
   
   always_comb begin
      count = out + 1;
   end

   always_ff @(posedge clk or posedge reset) begin
      if (reset)
        out <= 0;
      else
        out <= count;
   end

endmodule // counter
```

![right fit](../media/counter.pdf)

---
## Battery charger FSM

![inline](../media/charge_graph.png)

---

##  Li-Ion batteries 

Most Li-Ion batteries can tolerate 1 C during fast charge

For Biltema 18650 cells:
 $$ 1\text{ C} = 2950\text{ mA}$$
 $$ 0.1\text{ C} = 295\text{ mA}$$

Most Li-Ion need to be charged to a termination voltage of 4.2 V


![right](../media/18650.jpeg)

**Too high termination voltage, or too high charging current can cause growth of lithium dendrites, that short + and -. Will end in flames. Always check manufacturer datasheet for charging curves and voltages**

---

## Battery charger - Inputs

Voltage above $$V_{TRICKLE}$$

Voltage close to $$V_{TERM}$$

If voltage close to $$V_{TERM}$$ and current is close to $$I_{TERM}$$, then charging complete

If charging complete, and voltage has dropped ($$V_{RECHARGE}$$), then start again

![right 60%](../media/charge_graph.png)

---

## Battery charger - States

Trickle charge (0.1 C)

Fast charge  (1 C)

Constant voltage 

Charging complete


![right 60%](../media/charge_graph.png)

---

![inline](../media/bcharger.pdf)

---
### One way to draw FSMs - Graphviz

```
digraph finite_state_machine {
    rankdir=LR;
    size="8,5"

    node [shape = doublecircle, label="Trickle charger", fontsize=12] trkl;
    node [shape = circle, label="Fast charge", fontsize=12] fast;
    node [shape = circle, label="Const. Voltage", fontsize=12] vconst;
    node [shape = circle, label="Done", fontsize=12] done;

    trkl -> trkl [label="vtrkl = 0"];
    trkl -> fast [label="vtrkl = 1"];
    fast -> fast [label="vterm = 0"];
    fast -> vconst [label="vterm = 1"];
    vconst-> vconst [label="iterm = 0"];
    vconst-> done [label="iterm = 1"];
    done-> done [label="vrchrg = 0"];
    done-> trkl [label="vrchrg = 1"];

}
```

    dot -Tpdf bcharger.dot -o bcharger.pdf


---



[.column]

![inline fit ](../media/bcharger.pdf)

```verilog
module bcharger( output logic trkl,
        output logic fast, 
        output logic vconst,
        output logic done,
        input logic  vtrkl, 
        input logic  vterm, 
        input logic  iterm, 
        input logic  vrchrg,
        input logic  clk, 
        input logic  reset
                    );

   parameter TRLK = 0, FAST = 1, VCONST = 2, DONE=3;
   logic [1:0]                   state;
   logic [1:0]                   next_state;

   //- Figure out the next state
   always_comb begin
      case (state)
        TRLK: next_state = vtrkl ? FAST : TRLK;
        FAST: next_state = vterm ? VCONST : FAST;
        VCONST: next_state = iterm ? DONE : VCONST;
        DONE: next_state = vrchrg ? TRLK :DONE;
        default: next_state = TRLK;
      endcase // case (state)
    end

```

[.column]

```verilog
   //- Control output signals
   always_ff @(posedge clk or posedge reset) begin
      if(reset) begin
         state <= TRLK;
         trkl <= 1;
         fast <= 0;
         vconst <= 0;
         done <= 0;
      end
      else begin
         state <= next_state;
         case (state)
           TRLK: begin
              trkl <= 1;
              fast <= 0;
              vconst <= 0;
              done <= 0;
           end
           FAST: begin
              trkl <= 0;
              fast <= 1;
              vconst <= 0;
              done <= 0;

           end
           VCONST: begin
              trkl <= 0;
              fast <= 0;
              vconst <= 1;
              done <= 0;

           end
           DONE: begin
              trkl <= 0;
              fast <= 0;
              vconst <= 0;
              done <= 1;
           end
         endcase // case (state)
      end // else: !if(reset)
   end
endmodule
```
---

![original fit](../media/bcharger_sim.png)

---

### Synthesize FSM with yosys
<sub>dicex/sim/verilog/bcharger_sv/bcharger.ys</sub>

```tcl 

# read design
read_verilog -sv bcharger.sv;
hierarchy -top bcharger;

# the high-level stuff
fsm; opt; memory; opt;

# mapping to internal cell library
techmap; opt;
synth;
opt_clean;

# mapping flip-flops 
dfflibmap  -liberty ../../../lib/SUN_TR_GF130N.lib

# mapping logic 
abc -liberty ../../../lib/SUN_TR_GF130N.lib

# write synth netlist
write_verilog bcharger_netlist.v
read_verilog  ../../../lib/SUN_TR_GF130N_empty.v
write_spice -big_endian -neg AVSS -pos AVDD -top bcharger bcharger_netlist.sp

# write dot so we can make image
show -format dot -prefix bcharger_synth -colors 1 -width -stretch
clean

```

---

![original fit](../media/bcharger_synth.pdf)

---



#[fit] Thanks!







