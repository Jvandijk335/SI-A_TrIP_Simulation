{10.6.0.3437}
{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

StoreActiveAtom;
LoadAtomFromFile([Product], pDir([Atoms\BASIC MODELING\Product.atm]));
LoadAtomFromFile([Queue], pDir([Atoms\BASIC MODELING\Queue.atm]));
LoadAtomFromFile([Server], pDir([Atoms\BASIC MODELING\Server.atm]));
LoadAtomFromFile([Sink], pDir([Atoms\BASIC MODELING\Sink.atm]));
LoadAtomFromFile([Source], pDir([Atoms\BASIC MODELING\Source.atm]));
RestoreActiveAtom;


{Atom: Source1}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, s, [Source1], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [NegExp(90)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [NegExp(90)]);
SetExprAtt([MaxProducts], [{.-1|1. Unlimited.} -1 ]);
SetAtt([Icon3D], 4);
SetAtomSettings([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
SetLoadAtomID(1);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(9, 9, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Queue2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue2], 1, false);
SetExprAtt([SendTo], [{.Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))|2. An open channel (First channel first): search, starting from the first channel, and send to the first open channel found..}Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))]);
SetAtt([Capacity], 10);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 1);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
SetAtt([ShowContents], 1);
SetAtt([FittingContentCount], 0);
SetAtt([NameLength3D], 6);
SetAtt([ShowContentBar3D], 1);
SetAtomSettings([], 12615680, 4272);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>updateversion:10.6.]);
SetChannels(1, 3);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(2);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, false, 0, 0, [], []);
SetLoc(15, 9, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Server3}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Server3], 1, false);
SetExprAtt([CycleTime], [negexp(120)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~0~.}0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 86.7594626008462);
SetAtt([EndBusy], 0);
SetAtt([NextDown], 1E40);
SetAtt([CurRepairTime], 0);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel -  First channel first.}openallic(c)]);
SetAtt([3DIcon], 7);
SetAtt([BusyFlag], 0);
SetExprAtt([mcbf], [0]);
SetAtt([nextmcbf], 0);
SetExprAtt([mttr2], [0]);
SetAtt([curmttr2], 0);
SetAtt([LastStatus1], 0);
SetAtt([LastStatus2], 0);
SetAtt([CyclesCounter], 0);
SetAtt([LastDown], 0);
SetAtt([SecondColor], 677797);
SetExprAtt([mtbf], [mttf]);
SetAtt([BeginBusy], 492.824314518558);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 292315, 263344);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(3);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(21, 9, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Sink4}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Sink4], 1, false);
SetAtt([EntryTrigger], 0);
SetAtt([Icon3D], 4);
SetAtomSettings([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\sink.bmp]), [sink]));
AddModel3D(
	RegisterModel3D(Model3DDir([sink.wrl]), [sink.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([sink_Resized.wrl]), [sink_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Sink.ico]));
SetChannels(3, 0);
SetChannelRanges(1, 255, 0, 0);
SetLoadAtomID(4);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(27, 9, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Product}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Product], 1, false);
SetAtt([Icon3D], 11);
SetAtt([Hide2DIcon], 0);
SetAtt([ShowColor], 0);
SetAtt([RefProductEvents], 0);
SetAtomSettings([], 12615680, 73776);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\operatorblue.bmp]), [operatorblue]));
AddModel3D(
	RegisterModel3D(Model3DDir([box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(DdbRec, [>drawxsize:1.>drawysize:1.]);
SetLoadAtomID(5);
SetLoc(4, 9, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Server36}

sets;
AtomByName([Server3], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server3'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Server36], 1, false);
SetExprAtt([CycleTime], [negexp(120)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~0~.}0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 227.198412481707);
SetAtt([EndBusy], 0);
SetAtt([NextDown], 1E40);
SetAtt([CurRepairTime], 0);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel -  First channel first.}openallic(c)]);
SetAtt([3DIcon], 7);
SetAtt([BusyFlag], 0);
SetExprAtt([mcbf], [0]);
SetAtt([nextmcbf], 0);
SetExprAtt([mttr2], [0]);
SetAtt([curmttr2], 0);
SetAtt([LastStatus1], 0);
SetAtt([LastStatus2], 0);
SetAtt([CyclesCounter], 0);
SetAtt([LastDown], 0);
SetAtt([SecondColor], 677797);
SetExprAtt([mtbf], [mttf]);
SetAtt([BeginBusy], 403.607858729114);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 292315, 263344);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(6);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(21, 12, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Server37}

sets;
AtomByName([Server3], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server3'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Server37], 1, false);
SetExprAtt([CycleTime], [negexp(120)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~0~.}0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 21.4978419013545);
SetAtt([EndBusy], 0);
SetAtt([NextDown], 1E40);
SetAtt([CurRepairTime], 0);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel -  First channel first.}openallic(c)]);
SetAtt([3DIcon], 7);
SetAtt([BusyFlag], 0);
SetExprAtt([mcbf], [0]);
SetAtt([nextmcbf], 0);
SetExprAtt([mttr2], [0]);
SetAtt([curmttr2], 0);
SetAtt([LastStatus1], 0);
SetAtt([LastStatus2], 0);
SetAtt([CyclesCounter], 0);
SetAtt([LastDown], 0);
SetAtt([SecondColor], 677797);
SetExprAtt([mtbf], [mttf]);
SetAtt([BeginBusy], 485.56689239985);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 292315, 263344);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(7);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(21, 15, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;
Up;
ConnectLoadAtoms(1, 1, 1, 2, 0);
ConnectLoadAtoms(0, 5, 1, 1, 0);
ConnectLoadAtoms(1, 2, 1, 3, 0);
ConnectLoadAtoms(2, 2, 1, 6, 0);
ConnectLoadAtoms(3, 2, 1, 7, 0);
ConnectLoadAtoms(1, 3, 1, 4, 0);
ConnectLoadAtoms(1, 6, 2, 4, 0);
ConnectLoadAtoms(1, 7, 3, 4, 0);
LoadEvent(58.1490821099076, 1, 1, 0, 0, 0);


{Experiment settings}

ActivateExperimentAtom;
SetAtt(17, 1);

{Saved Model3D settings.}

ExecOnCreationOnLoad;
