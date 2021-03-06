//====================================================================
// Created       : Karianne Krokan Kragseth at 2018-03-22
//====================================================================

interface in_PeripheralSubSystem();
  // -----------------------------
  // -- Clock and reset
  // -----------------------------
  logic ckTb;
  logic ckPeri;
  logic arst;

 // -----------------------------
  // -- APB
  // -----------------------------
   nVipIn_AHBLite5Master uin_AhbBus();

  // Padbus
  logic [pa_PeripheralSubSystem::NUM_PSS_SERIOBOX-1:0][7:0] serIOBoxGpioIn;
  logic [pa_PeripheralSubSystem::NUM_PSS_SERIOBOX-1:0][7:0] serIOBoxGpioOut;
  logic [pa_PeripheralSubSystem::NUM_PSS_SERIOBOX-1:0][7:0] serIOBoxGpioOutEnable;

  // -----------------------------
  // -- UART
  // -----------------------------
  logic ckBrg0;
  logic dmaRxReP0;
  logic dmaTxWeP0;
  logic rxDataReady0;
  logic txDataReady0;
  logic uartRxEnable0;
  logic uartTxEnable0;
  logic taskStartRx0;
  logic eventTxCompleted0;

  logic ckBrg1;
  logic dmaRxReP1;
  logic dmaTxWeP1;
  logic rxDataReady1;
  logic txDataReady1;
  logic uartRxEnable1;
  logic uartTxEnable1;
  logic taskStartRx1;
  logic eventTxCompleted1;

  logic ckBrg2;
  logic dmaRxReP2;
  logic dmaTxWeP2;
  logic rxDataReady2;
  logic txDataReady2;
  logic uartRxEnable2;
  logic uartTxEnable2;
  logic taskStartRx2;
  logic eventTxCompleted2;

  logic ckBrg3;
  logic dmaRxReP3;
  logic dmaTxWeP3;
  logic rxDataReady3;
  logic txDataReady3;
  logic uartRxEnable3;
  logic uartTxEnable3;
  logic taskStartRx3;
  logic eventTxCompleted3;

  // -----------------------------
  // -- RAM bus
  // -----------------------------
  logic        ahbHWrite;
  logic  [7:0] ahbHWData;
  logic [31:0] ahbHRData;
  logic        ahbHSelX;
endinterface