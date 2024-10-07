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


{Atom: 1_Entrance}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, s, [1_Entrance], 1, false);
SetExprAtt([SendTo], [{.Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))|2. An open channel (First channel first): search, starting from the first channel, and send to the first open channel found..}Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))]);
SetExprAtt([CycleTime], [Poisson(20.57)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [0]);
SetExprAtt([MaxProducts], [{.-1|1. Unlimited.}-1]);
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
SetLoc(-1, 12, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Checkout 1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 1], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 66.9672475036798);
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
SetAtt([BeginBusy], 28797.3076555565);
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
SetLoc(17, 2, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 2], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 78.8275308833778);
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
SetAtt([BeginBusy], 28751.0038259899);
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
SetLoadAtomID(5);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 5, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 3}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 3], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 96.189858212612);
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
SetAtt([BeginBusy], 28753.7100185956);
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
SetLoc(17, 8, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 4}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 4], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 588.864367192729);
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
SetAtt([BeginBusy], 28536.2179048484);
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
SetLoadAtomID(9);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 11, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 5}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 5], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 570.475202501097);
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
SetAtt([BeginBusy], 28480.2936187483);
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
SetLoadAtomID(11);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 14, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 6}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 6], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 497.717241433416);
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
SetAtt([BeginBusy], 28467.2338889484);
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
SetLoadAtomID(13);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 17, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 7}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 7], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 71.9673026830514);
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
SetAtt([BeginBusy], 28745.1297879788);
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
SetLoadAtomID(15);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 20, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Checkout 8}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Checkout 8], 1, false);
SetExprAtt([CycleTime], [negexp(mins(2.5))]);
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
SetAtt([CurCycle], 137.981727543216);
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
SetAtt([BeginBusy], 28733.1133356619);
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
SetLoadAtomID(17);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 23, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: 4_Exit}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [4_Exit], 1, false);
SetExprAtt([EntryTrigger], [0]);
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
SetChannels(8, 0);
SetChannelRanges(1, 255, 0, 0);
SetLoadAtomID(18);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(5, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(6, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(7, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(8, 0, true, true, 0, 0, [], []);
SetLoc(28, 12, 0);
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
SetLoadAtomID(19);
SetLoc(-3, 12, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: 2_Main Queue}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [2_Main Queue], 1, false);
SetExprAtt([SendTo], [{.Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))|2. An open channel (First channel first): search, starting from the first channel, and send to the first open channel found..}Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))]);
SetAtt([Capacity], 100);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 1);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
SetAtt([ShowContents], 1);
SetAtt([FittingContentCount], 0);
SetAtt([NameLength3D], 12);
SetAtt([ShowContentBar3D], 1);
SetAtomSettings([], 12615680, 4272);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>updateversion:10.6.]);
SetChannels(1, 8);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(20);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(5, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(6, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(7, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(8, 0, true, false, 0, 0, [], []);
SetLoc(7, 12, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;
Up;
ConnectLoadAtoms(1, 1, 1, 20, 0);
ConnectLoadAtoms(0, 19, 1, 1, 0);
ConnectLoadAtoms(1, 3, 1, 18, 0);
ConnectLoadAtoms(1, 20, 1, 3, 0);
ConnectLoadAtoms(1, 5, 2, 18, 0);
ConnectLoadAtoms(2, 20, 1, 5, 0);
ConnectLoadAtoms(1, 7, 3, 18, 0);
ConnectLoadAtoms(3, 20, 1, 7, 0);
ConnectLoadAtoms(1, 9, 4, 18, 0);
ConnectLoadAtoms(4, 20, 1, 9, 0);
ConnectLoadAtoms(1, 11, 5, 18, 0);
ConnectLoadAtoms(5, 20, 1, 11, 0);
ConnectLoadAtoms(1, 13, 6, 18, 0);
ConnectLoadAtoms(6, 20, 1, 13, 0);
ConnectLoadAtoms(1, 15, 7, 18, 0);
ConnectLoadAtoms(7, 20, 1, 15, 0);
ConnectLoadAtoms(1, 17, 8, 18, 0);
ConnectLoadAtoms(8, 20, 1, 17, 0);
LoadEvent(0, 1, 1, 0, 0, 0);


{Experiment settings}

CreateExperimentTable(1, 5, 10);
SetExperimentTableRow(1, 1, 1, [RESULTS]);
SetExperimentTableRow(1, 1, 2, [10]);
SetExperimentTableRow(1, 1, 3, [4]);
SetExperimentTableRow(1, 1, 4, [10]);
SetExperimentTableRow(1, 1, 5, [0]);
SetExperimentTableRow(1, 1, 6, [0]);
SetExperimentTableRow(1, 1, 7, [0]);
SetExperimentTableRow(1, 1, 8, [0]);
SetExperimentTableRow(1, 1, 9, [0]);
SetExperimentTableRow(1, 1, 10, [0]);
SetExperimentTableRow(1, 2, 1, [1_Entrance]);
SetExperimentTableRow(1, 2, 2, [1]);
SetExperimentTableRow(1, 2, 3, [Entered]);
SetExperimentTableRow(1, 2, 4, [Output(cs)]);
SetExperimentTableRow(1, 2, 5, [0]);
SetExperimentTableRow(1, 2, 6, [0]);
SetExperimentTableRow(1, 2, 7, [0]);
SetExperimentTableRow(1, 2, 8, [0]);
SetExperimentTableRow(1, 2, 9, [0]);
SetExperimentTableRow(1, 2, 10, [0]);
SetExperimentTableRow(1, 3, 1, [2_Main Queue]);
SetExperimentTableRow(1, 3, 2, [1]);
SetExperimentTableRow(1, 3, 3, [AvgContent]);
SetExperimentTableRow(1, 3, 4, [AvgContent(cs)]);
SetExperimentTableRow(1, 3, 5, [AvgStay]);
SetExperimentTableRow(1, 3, 6, [AvgStay(cs)]);
SetExperimentTableRow(1, 3, 7, [MaxContent]);
SetExperimentTableRow(1, 3, 8, [MaximumContent(cs)]);
SetExperimentTableRow(1, 3, 9, [MaxStay]);
SetExperimentTableRow(1, 3, 10, [MaxStay(cs)]);
SetExperimentTableRow(1, 4, 1, [3_Checkouts]);
SetExperimentTableRow(1, 4, 2, [2]);
SetExperimentTableRow(1, 4, 3, [AvgStay]);
SetExperimentTableRow(1, 4, 4, [4DS[[AVGSTAY]]4DS]);
SetExperimentTableRow(1, 4, 5, [MaxStay]);
SetExperimentTableRow(1, 4, 6, [4DS[[MAXSTAY]]4DS]);
SetExperimentTableRow(1, 4, 7, [0]);
SetExperimentTableRow(1, 4, 8, [0]);
SetExperimentTableRow(1, 4, 9, [0]);
SetExperimentTableRow(1, 4, 10, [0]);
SetExperimentTableRow(1, 5, 1, [4_Exit]);
SetExperimentTableRow(1, 5, 2, [1]);
SetExperimentTableRow(1, 5, 3, [Exited]);
SetExperimentTableRow(1, 5, 4, [Input(cs)]);
SetExperimentTableRow(1, 5, 5, [0]);
SetExperimentTableRow(1, 5, 6, [0]);
SetExperimentTableRow(1, 5, 7, [0]);
SetExperimentTableRow(1, 5, 8, [0]);
SetExperimentTableRow(1, 5, 9, [0]);
SetExperimentTableRow(1, 5, 10, [0]);
CreateExperimentTable(2, 1, 9);
SetExperimentTableRow(2, 1, 1, [3_Checkouts]);
SetExperimentTableRow(2, 1, 2, [Checkout 1]);
SetExperimentTableRow(2, 1, 3, [Checkout 2]);
SetExperimentTableRow(2, 1, 4, [Checkout 3]);
SetExperimentTableRow(2, 1, 5, [Checkout 4]);
SetExperimentTableRow(2, 1, 6, [Checkout 5]);
SetExperimentTableRow(2, 1, 7, [Checkout 6]);
SetExperimentTableRow(2, 1, 8, [Checkout 7]);
SetExperimentTableRow(2, 1, 9, [Checkout 8]);
ActivateExperimentAtom;
SetAtt(1, 10);
SetExprAtt(2, [hr(8)]);
SetExprAtt(3, [0]);
SetAtt(4, 10);
SetAtt(5, 1);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetAtt(13, 10);
SetTextAtt(14, [C:\Users\jvand\Documents\Enterprise Dynamics\10.6\]);
SetAtt(16, 100000);
SetAtt(17, 1);

{Saved Model3D settings.}

ExecOnCreationOnLoad;
