{10.6.0.3437}
{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);
AddLayer([Visuals], 11, 2, 1);
AddLayer([Background], 19, 3, 2);
AddLayer([Model], 19, 4, 3);


{Load required atoms}

StoreActiveAtom;
LoadAtomFromFile([Container], pDir([Atoms\BASIC MODELING\Container.atm]));
LoadAtomFromFile([Product], pDir([Atoms\BASIC MODELING\Product.atm]));
LoadAtomFromFile([Queue], pDir([Atoms\BASIC MODELING\Queue.atm]));
LoadAtomFromFile([Server], pDir([Atoms\BASIC MODELING\Server.atm]));
LoadAtomFromFile([Sink], pDir([Atoms\BASIC MODELING\Sink.atm]));
LoadAtomFromFile([Source], pDir([Atoms\BASIC MODELING\Source.atm]));
LoadAtomFromFile([HumanResource], pDir([Atoms\HUMAN RESOURCE\HumanResource.atm]));
LoadAtomFromFile([HumanResourceTeam], pDir([Atoms\HUMAN RESOURCE\HumanResourceTeam.atm]));
LoadAtomFromFile([HumanResourceTransportRouter], pDir([Atoms\HUMAN RESOURCE\HumanResourceTransportRouter.atm]));
LoadAtomFromFile([Network Controller], pDir([Atoms\NETWORK\Network Controller.atm]));
LoadAtomFromFile([Network Node], pDir([Atoms\NETWORK\Network Node.atm]));
LoadAtomFromFile([Node Manipulator], pDir([Atoms\NETWORK\Node Manipulator.atm]));
LoadAtomFromFile([Assembler], pDir([Atoms\PROCESSES\Assembler.atm]));
RestoreActiveAtom;


{Preregister 4DS}

Dim([refHumanResourceTeam1], vbAtom);
Dim([refHumanResourceTeam2], vbAtom);


{Atom: HumanResourceTeam2}

sets;
AtomByName([HumanResourceTeam], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTeam'. Inheriting from BaseClass.]));
CreateAtom(a, s, [HumanResourceTeam2], 1, false);
Set(OnInit, [4DS[Dim([refHumanResourceTeam2], vbAtom, c)]4DS]);
SetExprAtt([AssignTo], [{.AssignTo_FirstResourceFirst(c, cs)|2. A free resource (FRF) --> look for a free resource. Check the First Resource connected to the team First..}AssignTo_FirstResourceFirst(c, cs)]);
SetAtt([SortBy], 1);
SetAtt([LstAssignedTasks], 666863904);
SetAtt([LstNotAssignedTasks], 666877344);
SetAtt([AllowTaskInterruptionPriority], 0);
SetAtt([TempAllowInterruption], 0);
SetAtt([TempPriority], 0);
SetAtt([LineUpResources], 1);
SetAtt([DistanceResources], 1);
SetExprAtt([TaskLocForInterruption], [{.HumanResourceTask_GetTaskLocation(cs)|1. Task location did not change --> The task location is equal to the location where the resources was called..}HumanResourceTask_GetTaskLocation(cs)]);
SetAtt([MinInterruptionPriority], 0);
SetAtt([UseReference], 1);
SetTextAtt([ReferenceName], [refHumanResourceTeam2]);
SetExprAtt([SelectTaskRule], [{.0|1. No specific rule..}0]);
SetAtomSettings([], 32768, 4130);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTeam.ico]));
SetChannels(0, 1);
SetLoadAtomID(117);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(17, -1, 0);
SetSize(8, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 0);
CreateTableColumn(0, 0, [``
`Operator2`
]);
SetStatus(0);
ExecLateInit;


{Atom: LstAssignedTasks}

sets;
AtomByName([HumanResourceTaskList], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTaskList'. Inheriting from BaseClass.]));
CreateAtom(a, s, [LstAssignedTasks], 1, false);
SetTextAtt([Name], [LstAssignedTasks]);
SetAtt([ID], 0);
SetAtt([IsSorted], 0);
SetAtt([Indexed], 1);
SetAtomSettings([], 0, 1032);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Prohibited.ico]));
SetLoadAtomID(161);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: LstNotAssignedTasks}

sets;
AtomByName([HumanResourceTaskList], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTaskList'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [LstNotAssignedTasks], 1, false);
SetTextAtt([Name], [LstNotAssignedTasks]);
SetAtt([ID], 0);
SetAtt([IsSorted], 0);
SetAtt([Indexed], 1);
SetAtomSettings([], 0, 1032);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Prohibited.ico]));
SetLoadAtomID(162);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;
Up;


{Atom: HumanResourceTeam1}

sets;
AtomByName([HumanResourceTeam], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTeam'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTeam1], 1, false);
Set(OnInit, [4DS[Dim([refHumanResourceTeam1], vbAtom, c)]4DS]);
SetExprAtt([AssignTo], [{.AssignTo_FirstResourceFirst(c, cs)|2. A free resource (FRF) --> look for a free resource. Check the First Resource connected to the team First..}AssignTo_FirstResourceFirst(c, cs)]);
SetAtt([SortBy], 1);
SetAtt([LstAssignedTasks], 666880224);
SetAtt([LstNotAssignedTasks], 852675168);
SetAtt([AllowTaskInterruptionPriority], 0);
SetAtt([TempAllowInterruption], 0);
SetAtt([TempPriority], 0);
SetAtt([LineUpResources], 1);
SetAtt([DistanceResources], 1);
SetExprAtt([TaskLocForInterruption], [{.HumanResourceTask_GetTaskLocation(cs)|1. Task location did not change --> The task location is equal to the location where the resources was called..}HumanResourceTask_GetTaskLocation(cs)]);
SetAtt([MinInterruptionPriority], 0);
SetAtt([UseReference], 1);
SetTextAtt([ReferenceName], [refHumanResourceTeam1]);
SetExprAtt([SelectTaskRule], [{.0|1. No specific rule..}0]);
SetAtomSettings([], 32768, 4130);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTeam.ico]));
SetChannels(0, 1);
SetLoadAtomID(88);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(17, -3, 0);
SetSize(8, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 0);
CreateTableColumn(0, 0, [``
`Operator1`
]);
SetStatus(0);
ExecLateInit;


{Atom: LstAssignedTasks}

sets;
AtomByName([HumanResourceTaskList], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTaskList'. Inheriting from BaseClass.]));
CreateAtom(a, s, [LstAssignedTasks], 1, false);
SetTextAtt([Name], [LstAssignedTasks]);
SetAtt([ID], 0);
SetAtt([IsSorted], 0);
SetAtt([Indexed], 1);
SetAtomSettings([], 0, 1032);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Prohibited.ico]));
SetLoadAtomID(163);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: LstNotAssignedTasks}

sets;
AtomByName([HumanResourceTaskList], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTaskList'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [LstNotAssignedTasks], 1, false);
SetTextAtt([Name], [LstNotAssignedTasks]);
SetAtt([ID], 0);
SetAtt([IsSorted], 0);
SetAtt([Indexed], 1);
SetAtomSettings([], 0, 1032);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Prohibited.ico]));
SetLoadAtomID(164);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;
Up;


{Atom: Source 1}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Source 1], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Mins(8)+15.18]);
SetExprAtt([CreationTrigger], [4DS[{.~1|~Label([Product], i) := 1~.}Label([Product], i) := 1]4DS]);
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
SetLoc(-2, 24, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: De-paneling robot}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [De-paneling robot], 1, false);
SetExprAtt([CycleTime], [Mins(2)+7.04+47.75]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~2.82~.}2.82]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 174.79);
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
SetAtt([BeginBusy], 4610.728822287);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 12615680, 263344);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:2.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(2);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(4, 19, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Board programming}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Board programming], 1, false);
SetExprAtt([CycleTime], [Mins(4)+35.31]);
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
SetAtt([CurCycle], 275.31);
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
SetAtt([BeginBusy], 5446.98);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 32768, 263344);
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
SetLoc(4, 13, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Pin stitchers}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Pin stitchers], 1, false);
SetExprAtt([CycleTime], [47.75]);
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
SetAtt([CurCycle], 47.75);
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
SetAtt([BeginBusy], 5227.11);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 12615680, 263344);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(4);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(4, 8, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Start scanner}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Start scanner], 1, false);
SetExprAtt([CycleTime], [1.56]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
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
SetAtt([CurCycle], 1.56);
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
SetAtt([BeginBusy], 4951.8);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 32768, 263344);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>product:1.>t-node1:1.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(5);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(4, 24, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Assembly stage 1}

sets;
AtomByName([Assembler], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Assembler'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Assembly stage 1], 1, false);
SetExprAtt([cycletime], [24.93]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetExprAtt([sendto], [{.~1|~1~.}1]);
SetAtt([curcolref], 1);
SetExprAtt([4Dscript], [1]);
SetAtt([finishquant], 2);
SetAtt([showcontents], 1);
SetAtt([pack], 1);
SetExprAtt([In2Trigger], [0]);
SetAtt([columns], 1);
SetAtt([3DIcon], 2);
SetAtt([CutOffMode], 0);
SetExprAtt([CutOffTime], [0]);
SetExprAtt([CutOff], [false]);
SetAtomSettings([], 4194432, 1200);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\machines\mach1001.bmp]), [mach1001]));
AddModel3D(
	RegisterModel3D(Model3DDir([assembler.wrl]), [assembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Assembler.ico]));
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:4.]);
SetChannels(2, 1);
SetChannelRanges(2, 255, 1, 255);
SetLoadAtomID(6);
SetChannelRequestCount(1, 0, true, false, 5, 0, [container/order/main product], []);
SetChannelRequestCount(2, 0, false, true, 0, 0, [], []);
SetLoc(12, 5, 0);
SetSize(5, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(2, 1);
CreateTableColumn(0, 64, [``
`Input ch1`
`Input ch2`
]);
CreateTableColumn(1, 64, [`Product 1`
1
1
]);
SetStatus(1);
ExecLateInit;


{Atom: Automatic soldering}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Automatic soldering], 1, false);
SetExprAtt([CycleTime], [57.69+10.40]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~1.58~.}1.58]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 68.09);
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
SetAtt([BeginBusy], 4311.01013246211);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 8404992, 263344);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:5.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(7);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(17, 5, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Source 2}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Source 2], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Mins(8)+15.18]);
SetExprAtt([CreationTrigger], [4DS[{.~1|~Label([Product], i) := 2~.}Label([Product], i) := 2]4DS]);
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
SetLoadAtomID(8);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(-2, 13, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Assembly stage 2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Assembly stage 2], 1, false);
SetExprAtt([CycleTime], [17.18]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~26.07~.}26.07]);
SetExprAtt([EntryTrigger], [CloseInput(c)]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 17.18);
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
SetAtt([BeginBusy], 4633.97841105594);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 8404992, 263344);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:7.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(9);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(28, 5, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: In line lasering}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [In line lasering], 1, false);
SetExprAtt([CycleTime], [Mins(1)+23.00]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~34.27~.}34.27]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 83);
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
SetAtt([BeginBusy], 4685.428782287);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 12615680, 263344);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:8.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(10);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(34, 5, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Connector cleaning 2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Connector cleaning 2], 1, false);
SetExprAtt([CycleTime], [14.53]);
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
SetAtt([CurCycle], 14.53);
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
SetAtt([BeginBusy], 4789.06915218053);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 32768, 263344);
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
SetLoc(40, 10, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Connector cleaning}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Connector cleaning], 1, false);
SetExprAtt([CycleTime], [20.64]);
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
SetAtt([CurCycle], 20.64);
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
SetAtt([BeginBusy], 4768.42912218053);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 32768, 263344);
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
SetLoadAtomID(12);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(40, 13, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Pin inspection machine}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Pin inspection machine], 1, false);
SetExprAtt([CycleTime], [55.62]);
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
SetAtt([CurCycle], 55.62);
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
SetAtt([BeginBusy], 4803.59921218053);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 32768, 263344);
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
SetLoc(40, 16, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Bus inspection machine}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Bus inspection machine], 1, false);
SetExprAtt([CycleTime], [40.33]);
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
SetAtt([CurCycle], 40.33);
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
SetAtt([BeginBusy], 4859.21924218053);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 12615680, 263344);
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
SetChannels(1, 3);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(14);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, false, 0, 0, [], []);
SetLoc(40, 19, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Final inspection machine #1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Final inspection machine #1], 1, false);
SetExprAtt([CycleTime], [5.10+38.55]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~Mins(1)+23.88~.}Mins(1)+23.88]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 43.65);
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
SetAtt([BeginBusy], 4983.42924218053);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 12615680, 263344);
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
SetLoc(39, 24, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Final inspection machine #2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Final inspection machine #2], 1, false);
SetExprAtt([CycleTime], [5.10+38.55]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~Mins(1)+23.88~.}Mins(1)+23.88]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 15.9831531614825);
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
SetAtt([BeginBusy], 1918.07513132759);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 32768, 263344);
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
SetLoadAtomID(16);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(33, 24, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Final inspection machine #3}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Final inspection machine #3], 1, false);
SetExprAtt([CycleTime], [5.10+38.55]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~Mins(1)+23.88~.}Mins(1)+23.88]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 3.68757309686917);
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
SetAtt([BeginBusy], 1934.05828448907);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 16711680, 263344);
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
SetLoc(27, 24, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: packing and connector inspection}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [packing and connector inspection], 1, false);
SetExprAtt([CycleTime], [1.68+44.00+7.15+2.43+30.69]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~18.66~.}18.66]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [OpenInput(in(2,c))]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 85.95);
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
SetAtt([BeginBusy], 5045.73954317072);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
SetAtt([3DMoveProduct], 1);
SetAtomSettings([], 8404992, 263344);
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
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(18);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(14, 24, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Red}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Red], 1, false);
SetAtt([Icon3D], 11);
SetAtt([Hide2DIcon], 0);
SetAtt([ShowColor], 0);
SetAtt([RefProductEvents], 0);
SetAtomSettings([], 12615680, 73776);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\circlered.png]), [circlered]));
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
SetLoc(-7, 24, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Sink22}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Sink22], 1, false);
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
SetChannels(1, 0);
SetChannelRanges(1, 255, 0, 0);
SetLoadAtomID(21);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(17, 28, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;


{Atom: Basket 2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Basket 2], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 1);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
SetAtt([ShowContents], 1);
SetAtt([FittingContentCount], 0);
SetAtt([NameLength3D], 8);
SetAtt([ShowContentBar3D], 1);
SetAtomSettings([], 12615680, 4272);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>updateversion:10.6.]);
SetChannels(3, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(23);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(19, 24, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Basket 1}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Basket 1], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 1);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
SetAtt([ShowContents], 1);
SetAtt([FittingContentCount], 0);
SetAtt([NameLength3D], 8);
SetAtt([ShowContentBar3D], 1);
SetAtomSettings([], 12615680, 4272);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
Set(DdbRec, [>updateversion:10.6.>t-network:1.>t-nodeconnections-n1:1.>t-node1:6.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(62);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(23, 5, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Container29}

sets;
AtomByName([Container], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Container'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Container29], 1, false);
SetAtt([AutoReSize], 0);
SetExprAtt([sx], [1.1]);
SetExprAtt([sy], [1.1]);
SetExprAtt([sz], [1]);
SetAtt([ContainerType], 4);
SetAtt([UseBoxVisible], 1);
SetAtomSettings([], 16744448, 1170);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\Pallet.bmp]), [Pallet.bmp]));
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Container.ico]));
SetLoadAtomID(87);
SetLoc(-7, 13, 0);
SetSize(1.1, 1.1, 0.15);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: N1-1}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-1], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 1);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:1.>t-netreference:852679968.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(91);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(10, 25, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-2`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-2}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-2], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 2);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:2.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(92);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(10, 20, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-1`
`N1-3`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-3}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-3], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 3);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:3.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(93);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(10, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-2`
`N1-4`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-4}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-4], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 4);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:4.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(94);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(14, 8, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-3`
`N1-5`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-5}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-5], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 5);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:5.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(95);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(19, 8, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-4`
`N1-6`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-6}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-6], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 6);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:6.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(96);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(25, 8, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-5`
`N1-7`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-7}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-7], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 7);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:7.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(97);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(30, 8, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-6`
`N1-8`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-8}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-8], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 8);
SetAtt([ShowName], 1);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:8.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(98);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(36, 8, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-7`
`N1-9`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: Operator1}

sets;
AtomByName([HumanResource], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResource'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Operator1], 1, false);
SetAtt([CurrentTask], 0);
SetAtt([Assigned], 0);
SetExprAtt([Speed], [100000]);
SetAtt([Acceleration], 0);
SetAtt([Deceleration], 0);
SetAtt([UseWalkingNetwork], 0);
SetAtt([CurxDest], 14);
SetAtt([CuryDest], 8);
SetAtt([PrevAtom], 852649248);
SetAtt([UseTravel], 1);
SetAtt([OffNetwork], 0);
SetAtt([OffRoad], 0);
SetAtt([KeepSpeed], 1);
SetAtt([DistanceTable], 852678048);
SetAtt([NodeTable], 852665568);
SetAtt([PointerTable], 852684768);
SetAtt([ConnectionTable], 852679968);
SetAtt([BetweenNodes], 0);
SetAtt([DestNode], 4);
SetAtt([AtDestination], 1);
SetAtt([NextChannel], 0);
SetAtt([Picking], 1);
SetAtt([Placing], 0);
SetExprAtt([xOffPick], [{.~1|1. Fixed --> always apply an offset of ~0~ meter..}0]);
SetAtt([xOffPlace], 0);
SetExprAtt([yOffPick], [{.~1|1. Fixed --> always apply an offset of ~0~ meter..}0]);
SetAtt([yOffPlace], 0);
SetAtt([OcToPrev], 2);
SetAtt([OcToCur], 1);
SetAtt([InterruptedTask], 0);
SetAtt([Available], 1);
SetAtt([NrDown], 0);
SetExprAtt([CallTrigger], [0]);
SetExprAtt([FreeTrigger], [0]);
SetExprAtt([InterruptTrigger], [0]);
SetExprAtt([ResumeTrigger], [0]);
SetAtt([NumberInLine], 0);
SetAtt([FinishingTasksBeforeDown], 0);
SetExprAtt([LoadTime], [0]);
SetExprAtt([UnloadTime], [0]);
SetAtt([IsLoaded], 0);
SetAtt([LoadQuantity], 1);
SetAtt([HasLoad], 0);
SetAtt([LoadRestriction], 1);
SetAtt([UnloadSequence], 1);
SetTextAtt([UnloadLabel], [0]);
SetTextAtt([LoadLabel], [0]);
SetExprAtt([DownTrigger], [0]);
SetExprAtt([UpTrigger], [0]);
SetAtt([DisplayResourceName], 1);
SetAtt([DisplayTeamName], 0);
SetAtt([DisplayStatus], 1);
SetAtt([CutOffMode], 0);
SetExprAtt([CutOffTime], [0]);
SetAtt([CutOff], 0);
SetAtt([LastTransportTask], 0);
SetAtt([DisplayNumberOfContent], 1);
SetExprAtt([MaxCapacity], [1]);
SetAtt([WalkStatus], 1);
SetAtt([DisplayDistanceTraveled], 0);
SetAtt([DistanceTraveled], 0);
SetAtomSettings([], 12615680, 68657);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\operator.bmp]), [operator]));
AddModel3D(
	RegisterModel3D(Model3DDir([Persons\Men\Man_subdivided.wrl]), [Man_subdivided.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResource.ico]));
Set(DdbRec, [>oldxloc:11.>oldyloc:25.]);
SetChannels(3, 3);
SetChannelRanges(3, 3, 3, 3);
SetLoadAtomID(99);
SetChannelRequestCount(1, 0, true, true, 1, 1, [Do not connect.], [Do not connect.]);
SetChannelRequestCount(2, 0, true, true, 1, 1, [Do not connect.], [Do not connect.]);
SetChannelRequestCount(3, 0, true, true, 1, 1, [Do not connect.], [Do not connect.]);
SetLoc(11, 25, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 1);
CreateTableColumn(0, 0, [``
1
]);
CreateTableColumn(1, 0, [1
0
]);
SetStatus(1);
ExecLateInit;


{Atom: Network Controller}

sets;
AtomByName([Network Controller], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Controller'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Network Controller], 1, false);
SetAtt([network], 1);
SetAtt([optimize], 0);
SetAtt([distancetable], 852678048);
SetAtt([nodetable], 852665568);
SetAtt([pointertable], 852684768);
SetAtt([renamenodes], 1);
SetAtt([angletable], 852664608);
SetAtt([atomtable], 666848544);
SetAtt([batterytable], 666845664);
SetAtt([batterydistancetable], 666840864);
SetAtomSettings([], 0, 530464);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkController.ico]));
Set(DdbRec, [>atom1:852679008.]);
SetLoadAtomID(100);
SetLoc(5, 0, 0);
SetSize(9, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(18, 18);
CreateTableColumn(0, 64, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
]);
CreateTableColumn(1, 64, [`N1-1`
``
1
]);
CreateTableColumn(2, 64, [`N1-2`
1
``
1
]);
CreateTableColumn(3, 64, [`N1-3`
``
1
``
1
]);
CreateTableColumn(4, 64, [`N1-4`
``
``
1
``
1
]);
CreateTableColumn(5, 64, [`N1-5`
``
``
``
1
``
1
]);
CreateTableColumn(6, 64, [`N1-6`
``
``
``
``
1
``
1
]);
CreateTableColumn(7, 64, [`N1-7`
``
``
``
``
``
1
``
1
]);
CreateTableColumn(8, 64, [`N1-8`
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(9, 64, [`N1-9`
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(10, 64, [`N1-10`
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(11, 64, [`N1-11`
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(12, 64, [`N1-12`
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(13, 64, [`N1-13`
``
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(14, 64, [`N1-14`
``
``
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(15, 64, [`N1-15`
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(16, 64, [`N1-16`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(17, 64, [`N1-17`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
``
1
]);
CreateTableColumn(18, 64, [`N1-18`
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
``
1
]);
SetStatus(0);
ExecLateInit;


{Atom: Distance Table}

sets;
BaseClass;
CreateAtom(a, s, [Distance Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetLoadAtomID(101);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(8, 8);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
]);
CreateTableColumn(1, 0, [`N1-1`
0
5
16
20.1231056256177
25.1231056256177
31.1231056256177
36.1231056256177
8.98846567431158E307
]);
CreateTableColumn(2, 0, [`N1-2`
5
0
11
15.1231056256177
20.1231056256177
26.1231056256177
31.1231056256177
8.98846567431158E307
]);
CreateTableColumn(3, 0, [`N1-3`
16
11
0
4.12310562561766
9.12310562561766
15.1231056256177
20.1231056256177
8.98846567431158E307
]);
CreateTableColumn(4, 0, [`N1-4`
20.1231056256177
15.1231056256177
4.12310562561766
0
5
11
16
8.98846567431158E307
]);
CreateTableColumn(5, 0, [`N1-5`
25.1231056256177
20.1231056256177
9.12310562561766
5
0
6
11
8.98846567431158E307
]);
CreateTableColumn(6, 0, [`N1-6`
31.1231056256177
26.1231056256177
15.1231056256177
11
6
0
5
8.98846567431158E307
]);
CreateTableColumn(7, 0, [`N1-7`
36.1231056256177
31.1231056256177
20.1231056256177
16
11
5
0
8.98846567431158E307
]);
CreateTableColumn(8, 0, [`N1-8`
42.1231056256177
37.1231056256177
26.1231056256177
22
17
11
6
0
]);
SetStatus(0);
ExecLateInit;


{Atom: Node Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Node Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetLoadAtomID(102);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(8, 8);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
]);
CreateTableColumn(1, 0, [`N1-1`
1
1
2
3
4
5
6
]);
CreateTableColumn(2, 0, [`N1-2`
2
2
2
3
4
5
6
]);
CreateTableColumn(3, 0, [`N1-3`
2
3
3
3
4
5
6
]);
CreateTableColumn(4, 0, [`N1-4`
2
3
4
4
4
5
6
]);
CreateTableColumn(5, 0, [`N1-5`
2
3
4
5
5
5
6
]);
CreateTableColumn(6, 0, [`N1-6`
2
3
4
5
6
6
6
]);
CreateTableColumn(7, 0, [`N1-7`
2
3
4
5
6
7
7
]);
CreateTableColumn(8, 0, [`N1-8`
2
3
4
5
6
7
8
8
]);
SetStatus(0);
ExecLateInit;


{Atom: Pointer Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Pointer Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetChannels(0, 18);
SetLoadAtomID(103);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(5, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(6, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(7, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(8, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(9, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(10, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(11, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(12, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(13, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(14, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(15, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(16, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(17, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(18, 0, true, true, 0, 0, [], []);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(18, 1);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
`N1-9`
`N1-10`
`N1-11`
`N1-12`
`N1-13`
`N1-14`
`N1-15`
`N1-16`
`N1-17`
`N1-18`
]);
CreateTableColumn(1, 0, [1
666837984
852682848
666843744
852641568
852663648
852642528
666841824
666870624
852668448
852670368
852680928
666846624
666844704
666854304
666855264
666856224
666857184
666858144
]);
SetStatus(0);
ExecLateInit;


{Atom: Angle Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Angle Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetLoadAtomID(104);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(8, 8);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
`N1-5`
`N1-6`
`N1-7`
`N1-8`
]);
CreateTableColumn(1, 0, [`N1-1`
``
90
]);
CreateTableColumn(2, 0, [`N1-2`
270
``
90
]);
CreateTableColumn(3, 0, [`N1-3`
``
270
``
165.963756532074
]);
CreateTableColumn(4, 0, [`N1-4`
``
``
345.963756532074
``
180
]);
CreateTableColumn(5, 0, [`N1-5`
``
``
``
0
``
180
]);
CreateTableColumn(6, 0, [`N1-6`
``
``
``
``
0
``
180
]);
CreateTableColumn(7, 0, [`N1-7`
``
``
``
``
``
0
]);
CreateTableColumn(8, 0, [`N1-8`
``
``
``
``
``
``
0
]);
SetStatus(0);
ExecLateInit;


{Atom: Atom Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Atom Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetChannels(0, 18);
SetLoadAtomID(105);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(5, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(6, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(7, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(8, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(9, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(10, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(11, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(12, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(13, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(14, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(15, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(16, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(17, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(18, 0, true, true, 0, 0, [], []);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(18, 2);
CreateTableColumn(0, 0, [``
`Basket 2`
`packing and connector inspection`
`De-paneling robot`
`Pin stitchers`
`Start scanner`
`Assembly stage 1`
`Automatic soldering`
`Assembly stage 2`
`In line lasering`
`Connector cleaning 2`
`Connector cleaning`
`Pin inspection machine`
`Bus inspection machine`
`Final inspection machine #1`
`Final inspection machine #2`
`Final inspection machine #3`
`Sink22`
`Basket 1`
]);
CreateTableColumn(1, 0, [`Pointer Value`
666837024
852640608
852647328
852649248
852650208
852651168
852652128
852654048
852655008
852655968
852656928
852657888
852658848
852659808
852660768
852662688
852679008
852683808
]);
CreateTableColumn(2, 0, [`Connected Node`
16
17
2
3
1
4
5
7
8
10
9
11
12
13
14
15
18
6
]);
SetStatus(0);
ExecLateInit;


{Atom: Battery Pointer Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Battery Pointer Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetLoadAtomID(106);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Battery Distance Table}

sets;
BaseClass;
CreateAtom(a, Up(s), [Battery Distance Table], 1, false);
SetAtomSettings([], 0, 3200);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetLoadAtomID(107);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 8);
CreateTableColumn(0, 0, [``
]);
CreateTableColumn(1, 0, [`De-paneling robot`
]);
CreateTableColumn(2, 0, [`Pin stitchers`
]);
CreateTableColumn(3, 0, [`Start scanner`
]);
CreateTableColumn(4, 0, [`Assembly stage 1`
]);
CreateTableColumn(5, 0, [`Automatic soldering`
]);
CreateTableColumn(6, 0, [`Assembly stage 2`
]);
CreateTableColumn(7, 0, [`In line lasering`
]);
CreateTableColumn(8, 0, [`Basket 1`
]);
SetStatus(0);
ExecLateInit;
Up;


{Atom: HumanResourceTransportRouter}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTransportRouter], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam1]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(109);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(6, 22, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: HumanResourceTransportRouter37}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTransportRouter37], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam1]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [4DS[{.~1|~if(CompareText(Name(last(c)),[Red]),1,2)~.}if(CompareText(Name(last(c)),[Red]),1,2)]4DS]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(2, 2);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(116);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(8, 5, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: HumanResourceTransportRouter38}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTransportRouter38], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam1]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(122);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(15, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter38}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter38], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam1]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(123);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(21, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter38 (1)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter38 (1)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam1]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(124);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(27, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter38 (2)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter38 (2)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam1]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(125);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(33, 3, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Operator2}

sets;
AtomByName([HumanResource], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResource'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Operator2], 1, false);
SetAtt([CurrentTask], 0);
SetAtt([Assigned], 0);
SetExprAtt([Speed], [100000]);
SetAtt([Acceleration], 0);
SetAtt([Deceleration], 0);
SetAtt([UseWalkingNetwork], 0);
SetAtt([CurxDest], 17);
SetAtt([CuryDest], 28);
SetAtt([PrevAtom], 852640608);
SetAtt([UseTravel], 1);
SetAtt([OffNetwork], 0);
SetAtt([OffRoad], 0);
SetAtt([KeepSpeed], 1);
SetAtt([DistanceTable], 852678048);
SetAtt([NodeTable], 852665568);
SetAtt([PointerTable], 852684768);
SetAtt([ConnectionTable], 852679968);
SetAtt([BetweenNodes], 0);
SetAtt([DestNode], 8);
SetAtt([AtDestination], 1);
SetAtt([NextChannel], 0);
SetAtt([Picking], 1);
SetAtt([Placing], 0);
SetExprAtt([xOffPick], [{.~1|1. Fixed --> always apply an offset of ~0~ meter..}0]);
SetAtt([xOffPlace], 0);
SetExprAtt([yOffPick], [{.~1|1. Fixed --> always apply an offset of ~0~ meter..}0]);
SetAtt([yOffPlace], 0);
SetAtt([OcToPrev], 0);
SetAtt([OcToCur], 0);
SetAtt([InterruptedTask], 0);
SetAtt([Available], 1);
SetAtt([NrDown], 0);
SetExprAtt([CallTrigger], [0]);
SetExprAtt([FreeTrigger], [0]);
SetExprAtt([InterruptTrigger], [0]);
SetExprAtt([ResumeTrigger], [0]);
SetAtt([NumberInLine], 0);
SetAtt([FinishingTasksBeforeDown], 0);
SetExprAtt([LoadTime], [0]);
SetExprAtt([UnloadTime], [0]);
SetAtt([IsLoaded], 0);
SetAtt([LoadQuantity], 1);
SetAtt([HasLoad], 0);
SetAtt([LoadRestriction], 1);
SetAtt([UnloadSequence], 1);
SetTextAtt([UnloadLabel], [0]);
SetTextAtt([LoadLabel], [0]);
SetExprAtt([DownTrigger], [0]);
SetExprAtt([UpTrigger], [0]);
SetAtt([DisplayResourceName], 1);
SetAtt([DisplayTeamName], 0);
SetAtt([DisplayStatus], 1);
SetAtt([CutOffMode], 0);
SetExprAtt([CutOffTime], [0]);
SetAtt([CutOff], 0);
SetAtt([LastTransportTask], 0);
SetAtt([DisplayNumberOfContent], 1);
SetExprAtt([MaxCapacity], [1]);
SetAtt([WalkStatus], 1);
SetAtt([DisplayDistanceTraveled], 0);
SetAtt([DistanceTraveled], 0);
SetAtomSettings([], 12615680, 68657);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\operator.bmp]), [operator]));
AddModel3D(
	RegisterModel3D(Model3DDir([Persons\Men\Man_subdivided.wrl]), [Man_subdivided.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResource.ico]));
Set(DdbRec, [>oldxloc:37.>oldyloc:8.]);
SetChannels(3, 3);
SetChannelRanges(3, 3, 3, 3);
SetLoadAtomID(126);
SetChannelRequestCount(1, 0, true, true, 1, 1, [Do not connect.], [Do not connect.]);
SetChannelRequestCount(2, 0, true, true, 1, 1, [Do not connect.], [Do not connect.]);
SetChannelRequestCount(3, 0, true, true, 1, 1, [Do not connect.], [Do not connect.]);
SetLoc(37, 8, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 1);
CreateTableColumn(0, 0, [``
1
]);
CreateTableColumn(1, 0, [1
0
]);
SetStatus(1);
ExecLateInit;


{Atom: N1-9}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-9], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 9);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:9.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(127);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(39, 14, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-8`
`N1-10`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-10}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-10], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 10);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:10.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(128);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(39, 11, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-9`
`N1-11`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-11}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-11], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 11);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:11.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(129);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(39, 17, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-10`
`N1-12`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-12}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-12], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 12);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:12.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(130);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(39, 20, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-11`
`N1-13`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-13}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-13], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 13);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:13.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(131);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(39, 23, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-12`
`N1-14`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-14}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-14], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 14);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:14.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(132);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(37, 23, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-13`
`N1-15`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-15}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-15], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 15);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:15.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(133);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(31, 23, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-14`
`N1-16`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-16}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-16], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 16);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:16.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(134);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(23, 23, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-15`
`N1-17`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-17}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-17], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 17);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:17.>t-netreference:852679968.]);
SetChannels(0, 3);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(135);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetLoc(18, 23, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(2, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-16`
`N1-18`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: N1-18}

sets;
AtomByName([Network Node], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Node'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [N1-18], 1, false);
SetAtt([ShowPaths], 1);
SetAtt([ShowNode], 1);
SetAtt([network], 1);
SetAtt([nodenumber], 18);
SetAtt([ShowName], 0);
SetAtt([ShowConnectionsToAtoms], 1);
SetAtt([ShowSpeedLimit], 1);
SetAtomSettings([], 0, 6320);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkNode.ico]));
Set(DdbRec, [>t-node:1.>t-node1:18.>t-netreference:852679968.]);
SetChannels(0, 2);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(136);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(16, 28, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(1, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-17`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
]);
SetStatus(0);
ExecLateInit;


{Atom: Node Manipulator33}

sets;
AtomByName([Node Manipulator], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Node Manipulator'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Node Manipulator33], 1, false);
SetAtt([connecting], 1);
SetExprAtt([selectatom], [4DS[do( setatt(3,0,c), var([atmLP], vbAtom), ForAtomTreeUnder(  Model,  do(   atmLP := a,   if(    and(     >(max(xAbsLoc(atmLP, Model), +(xabsloc(atmLP, Model), xsize(atmLP))), xabsloc(c, Model)),     >(max(yabsloc(atmLP, Model), +(yabsloc(atmLP, Model), ysize(atmLP))), yabsloc(c, Model)),     <(min(xabsloc(atmLP, Model), +(xabsloc(atmLP, Model), xsize(atmLP))), +(xabsloc(c, Model), xsize(c))),     <(min(yabsloc(atmLP, Model), +(yabsloc(atmLP, Model), ysize(atmLP))), +(yabsloc(c, Model),ysize(c))),     <>(atomid(atmLP),atomid(c)),     not(ddb([t999-hidenodes],atmLP))    ),    do(     setatt(3,1,c),     att([CurrentAtom], c) := ptv(atmLP)    )   )  ) ))]4DS]);
SetAtt([atomfound], 1);
SetAtt([displaymode], 1);
SetAtt([displaytext], 0);
SetExprAtt([unselectatom], [if( atomexists(in(1, c)), connect(0, c, 1, c))]);
SetAtt([twoway], 1);
SetAtt([ShowPaths], 1);
SetAtt([ShowNodes], 1);
SetAtt([ShowNodeNames], 1);
SetAtt([ShowConnectionsToatoms], 1);
SetAtt([CurrentAtom], 0);
SetAtomSettings([], 32768, 3106);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NodeManipulator.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 1);
SetLoadAtomID(108);
SetLoc(28, -3, 0);
SetSize(2, 2, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: HumanResourceTransportRouter54}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTransportRouter54], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(137);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(35, 12, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(138);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(46, 12, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (1)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (1)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(139);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(46, 15, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (2)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (2)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(140);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(46, 18, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (6)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (6)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(144);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(27, 29, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (7)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (7)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(145);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(27, 28, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (8)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (8)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(146);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(27, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (9)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (9)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(147);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(19, 26, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Copy of HumanResourceTransportRouter54 (10)}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Copy of HumanResourceTransportRouter54 (10)], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam2]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetAtt([NumberOfProducts], 0);
SetAtt([CallResourceOnEntry], 1);
SetAtt([FreeResourceOnExit], 1);
SetAtomSettings([], 9023522, 4128);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTransportRouter.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(148);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(14, 27, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;
Up;
ConnectLoadAtoms(1, 117, 1, 126, 0);
ConnectLoadAtoms(1, 88, 1, 99, 0);
ConnectLoadAtoms(1, 1, 1, 5, 0);
ConnectLoadAtoms(0, 19, 1, 1, 0);
ConnectLoadAtoms(1, 2, 2, 116, 0);
ConnectLoadAtoms(1, 109, 1, 2, 0);
ConnectLoadAtoms(1, 3, 1, 4, 0);
ConnectLoadAtoms(1, 8, 1, 3, 0);
ConnectLoadAtoms(1, 4, 1, 116, 0);
ConnectLoadAtoms(1, 5, 1, 109, 0);
ConnectLoadAtoms(1, 6, 1, 122, 0);
ConnectLoadAtoms(1, 116, 1, 6, 0);
ConnectLoadAtoms(2, 116, 2, 6, 0);
ConnectLoadAtoms(1, 7, 1, 123, 0);
ConnectLoadAtoms(1, 122, 1, 7, 0);
ConnectLoadAtoms(0, 87, 1, 8, 0);
ConnectLoadAtoms(1, 9, 1, 125, 0);
ConnectLoadAtoms(1, 124, 1, 9, 0);
ConnectLoadAtoms(1, 10, 1, 137, 0);
ConnectLoadAtoms(1, 125, 1, 10, 0);
ConnectLoadAtoms(1, 11, 1, 139, 0);
ConnectLoadAtoms(1, 138, 1, 11, 0);
ConnectLoadAtoms(1, 12, 1, 138, 0);
ConnectLoadAtoms(1, 137, 1, 12, 0);
ConnectLoadAtoms(1, 13, 1, 140, 0);
ConnectLoadAtoms(1, 139, 1, 13, 0);
ConnectLoadAtoms(1, 14, 1, 15, 0);
ConnectLoadAtoms(1, 140, 1, 14, 0);
ConnectLoadAtoms(2, 14, 1, 16, 0);
ConnectLoadAtoms(3, 14, 1, 17, 0);
ConnectLoadAtoms(1, 15, 1, 144, 0);
ConnectLoadAtoms(1, 16, 1, 145, 0);
ConnectLoadAtoms(1, 17, 1, 146, 0);
ConnectLoadAtoms(1, 18, 1, 148, 0);
ConnectLoadAtoms(1, 147, 1, 18, 0);
ConnectLoadAtoms(0, 9, 2, 18, 0);
ConnectLoadAtoms(1, 148, 1, 21, 0);
ConnectLoadAtoms(1, 23, 1, 147, 0);
ConnectLoadAtoms(1, 146, 1, 23, 0);
ConnectLoadAtoms(1, 145, 2, 23, 0);
ConnectLoadAtoms(1, 144, 3, 23, 0);
ConnectLoadAtoms(1, 62, 1, 124, 0);
ConnectLoadAtoms(1, 123, 1, 62, 0);
ConnectLoadAtoms(1, 91, 0, 92, 0);
ConnectLoadAtoms(2, 91, 0, 5, 0);
ConnectLoadAtoms(1, 92, 0, 91, 0);
ConnectLoadAtoms(2, 92, 0, 93, 0);
ConnectLoadAtoms(3, 92, 0, 2, 0);
ConnectLoadAtoms(1, 93, 0, 92, 0);
ConnectLoadAtoms(2, 93, 0, 94, 0);
ConnectLoadAtoms(3, 93, 0, 4, 0);
ConnectLoadAtoms(1, 94, 0, 93, 0);
ConnectLoadAtoms(2, 94, 0, 95, 0);
ConnectLoadAtoms(3, 94, 0, 6, 0);
ConnectLoadAtoms(1, 95, 0, 94, 0);
ConnectLoadAtoms(2, 95, 0, 96, 0);
ConnectLoadAtoms(3, 95, 0, 7, 0);
ConnectLoadAtoms(1, 96, 0, 95, 0);
ConnectLoadAtoms(2, 96, 0, 97, 0);
ConnectLoadAtoms(3, 96, 0, 62, 0);
ConnectLoadAtoms(1, 97, 0, 96, 0);
ConnectLoadAtoms(2, 97, 0, 98, 0);
ConnectLoadAtoms(3, 97, 0, 9, 0);
ConnectLoadAtoms(1, 98, 0, 97, 0);
ConnectLoadAtoms(2, 98, 0, 127, 0);
ConnectLoadAtoms(3, 98, 0, 10, 0);
ConnectLoadAtoms(1, 99, 0, 91, 0);
ConnectLoadAtoms(2, 99, 0, 91, 0);
ConnectLoadAtoms(0, 91, 2, 99, 0);
ConnectLoadAtoms(3, 99, 0, 91, 0);
ConnectLoadAtoms(1, 103, 0, 91, 0);
ConnectLoadAtoms(2, 103, 0, 92, 0);
ConnectLoadAtoms(3, 103, 0, 93, 0);
ConnectLoadAtoms(4, 103, 0, 94, 0);
ConnectLoadAtoms(5, 103, 0, 95, 0);
ConnectLoadAtoms(6, 103, 0, 96, 0);
ConnectLoadAtoms(7, 103, 0, 97, 0);
ConnectLoadAtoms(8, 103, 0, 98, 0);
ConnectLoadAtoms(9, 103, 0, 127, 0);
ConnectLoadAtoms(10, 103, 0, 128, 0);
ConnectLoadAtoms(11, 103, 0, 129, 0);
ConnectLoadAtoms(12, 103, 0, 130, 0);
ConnectLoadAtoms(13, 103, 0, 131, 0);
ConnectLoadAtoms(14, 103, 0, 132, 0);
ConnectLoadAtoms(15, 103, 0, 133, 0);
ConnectLoadAtoms(16, 103, 0, 134, 0);
ConnectLoadAtoms(17, 103, 0, 135, 0);
ConnectLoadAtoms(18, 103, 0, 136, 0);
ConnectLoadAtoms(1, 105, 0, 5, 0);
ConnectLoadAtoms(2, 105, 0, 2, 0);
ConnectLoadAtoms(3, 105, 0, 4, 0);
ConnectLoadAtoms(4, 105, 0, 6, 0);
ConnectLoadAtoms(5, 105, 0, 7, 0);
ConnectLoadAtoms(6, 105, 0, 62, 0);
ConnectLoadAtoms(7, 105, 0, 9, 0);
ConnectLoadAtoms(8, 105, 0, 10, 0);
ConnectLoadAtoms(9, 105, 0, 12, 0);
ConnectLoadAtoms(10, 105, 0, 11, 0);
ConnectLoadAtoms(11, 105, 0, 13, 0);
ConnectLoadAtoms(12, 105, 0, 14, 0);
ConnectLoadAtoms(13, 105, 0, 15, 0);
ConnectLoadAtoms(14, 105, 0, 16, 0);
ConnectLoadAtoms(15, 105, 0, 17, 0);
ConnectLoadAtoms(16, 105, 0, 23, 0);
ConnectLoadAtoms(17, 105, 0, 18, 0);
ConnectLoadAtoms(18, 105, 0, 21, 0);
ConnectLoadAtoms(1, 126, 0, 98, 0);
ConnectLoadAtoms(2, 126, 0, 98, 0);
ConnectLoadAtoms(0, 98, 2, 126, 0);
ConnectLoadAtoms(3, 126, 0, 98, 0);
ConnectLoadAtoms(1, 127, 0, 98, 0);
ConnectLoadAtoms(2, 127, 0, 128, 0);
ConnectLoadAtoms(3, 127, 0, 12, 0);
ConnectLoadAtoms(1, 128, 0, 127, 0);
ConnectLoadAtoms(2, 128, 0, 129, 0);
ConnectLoadAtoms(3, 128, 0, 11, 0);
ConnectLoadAtoms(1, 129, 0, 128, 0);
ConnectLoadAtoms(2, 129, 0, 130, 0);
ConnectLoadAtoms(3, 129, 0, 13, 0);
ConnectLoadAtoms(1, 130, 0, 129, 0);
ConnectLoadAtoms(2, 130, 0, 131, 0);
ConnectLoadAtoms(3, 130, 0, 14, 0);
ConnectLoadAtoms(1, 131, 0, 130, 0);
ConnectLoadAtoms(2, 131, 0, 132, 0);
ConnectLoadAtoms(3, 131, 0, 15, 0);
ConnectLoadAtoms(1, 132, 0, 131, 0);
ConnectLoadAtoms(2, 132, 0, 133, 0);
ConnectLoadAtoms(3, 132, 0, 16, 0);
ConnectLoadAtoms(1, 133, 0, 132, 0);
ConnectLoadAtoms(2, 133, 0, 134, 0);
ConnectLoadAtoms(3, 133, 0, 17, 0);
ConnectLoadAtoms(1, 134, 0, 133, 0);
ConnectLoadAtoms(2, 134, 0, 135, 0);
ConnectLoadAtoms(3, 134, 0, 23, 0);
ConnectLoadAtoms(1, 135, 0, 134, 0);
ConnectLoadAtoms(2, 135, 0, 136, 0);
ConnectLoadAtoms(3, 135, 0, 18, 0);
ConnectLoadAtoms(1, 136, 0, 135, 0);
ConnectLoadAtoms(2, 136, 0, 21, 0);
LoadEvent(0, 1, 1, 0, 0, 0);
LoadEvent(0, 8, 1, 0, 0, 0);
LoadEvent(0, 100, 1, 1000000, 0, 0);


{Experiment settings}

ActivateExperimentAtom;
SetAtt(17, 1);

{Saved Model3D settings.}

ExecOnCreationOnLoad;
