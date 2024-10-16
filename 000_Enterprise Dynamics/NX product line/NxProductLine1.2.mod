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
LoadAtomFromFile([StatusIndicator], pDir([Atoms\RESULTS\STATUS\StatusIndicator.atm]));
RestoreActiveAtom;


{Preregister 4DS}

Dim([refHumanResourceTeam], vbAtom);


{Atom: HumanResourceTeam}

sets;
AtomByName([HumanResourceTeam], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTeam'. Inheriting from BaseClass.]));
CreateAtom(a, s, [HumanResourceTeam], 1, false);
Set(OnInit, [4DS[Dim([refHumanResourceTeam], vbAtom, c)]4DS]);
SetExprAtt([AssignTo], [{.AssignTo_FirstResourceFirst(c, cs)|2. A free resource (FRF) --> look for a free resource. Check the First Resource connected to the team First..}AssignTo_FirstResourceFirst(c, cs)]);
SetAtt([SortBy], 3);
SetAtt([LstAssignedTasks], 978797040);
SetAtt([LstNotAssignedTasks], 978786480);
SetAtt([AllowTaskInterruptionPriority], 0);
SetAtt([TempAllowInterruption], 0);
SetAtt([TempPriority], 0);
SetAtt([LineUpResources], 1);
SetAtt([DistanceResources], 1);
SetExprAtt([TaskLocForInterruption], [{.HumanResourceTask_GetTaskLocation(cs)|1. Task location did not change --> The task location is equal to the location where the resources was called..}HumanResourceTask_GetTaskLocation(cs)]);
SetAtt([MinInterruptionPriority], 0);
SetAtt([UseReference], 1);
SetTextAtt([ReferenceName], [refHumanResourceTeam]);
SetExprAtt([SelectTaskRule], [{.0|1. No specific rule..}0]);
SetAtomSettings([], 32768, 4130);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\HumanResourceTeam.ico]));
SetChannels(0, 1);
SetLoadAtomID(35);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(16, 0, 0);
SetSize(8, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 0);
CreateTableColumn(0, 0, [``
`Operator 1`
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
SetLoadAtomID(72);
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
SetLoadAtomID(73);
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
SetExprAtt([CycleTime], [10]);
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
SetExprAtt([CycleTime], [Mins(2)+7.04]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~0~.}0]);
SetExprAtt([EntryTrigger], [CloseOutput(in(2,c))]);
SetExprAtt([ExitTrigger], [Do(
  OpenOutput(in(2,c)),
  CloseOutput(c),
  OpenOutput(in(3,c))  
)
]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 127.04);
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
SetAtt([BeginBusy], 167.280574847091);
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
SetChannels(3, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(2);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
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
SetExprAtt([CycleTime], [mins(2)+23.89]);
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
SetAtt([CurCycle], 143.89);
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
SetAtt([BeginBusy], 143.89);
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
SetExprAtt([CycleTime], [72.7]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~0~.}0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [Do(
  CloseOutput(c),
  OpenOutput(in(2,c))
)]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 72.7);
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
SetAtt([BeginBusy], 143.89);
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
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(4);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
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
SetExprAtt([ExitTrigger], [CloseOutput(c)]);
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
SetAtt([BeginBusy], 162.280574847091);
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
Set(DdbRec, [>t-network:1.>t-nodeconnections-n1:1.>t-node1:1.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(5);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
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
SetExprAtt([cycletime], [lognormal(10,2)]);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 10.4954932353032);
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
SetAtt([BeginBusy], 6473.70062920497);
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
SetExprAtt([CycleTime], [10]);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 3.93339406312164);
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
SetAtt([BeginBusy], 6322.93706856466);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 8.23720499771697);
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
SetAtt([BeginBusy], 6326.87046262779);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 1.80371335418028);
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
SetAtt([BeginBusy], 6335.14719610233);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 0.0395284768307596);
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
SetAtt([BeginBusy], 6335.1076676255);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 1.51176175414535);
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
SetAtt([BeginBusy], 6336.95090945651);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 10.2489038625008);
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
SetAtt([BeginBusy], 6338.46267121066);
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
SetLoadAtomID(14);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 45.7381387276491);
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
SetAtt([BeginBusy], 6348.71157507316);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 11.1571546949678);
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
SetAtt([BeginBusy], 6394.44971380081);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 3.99922850138248);
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
SetAtt([BeginBusy], 6405.60686849578);
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
SetExprAtt([CycleTime], [negexp(9)]);
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
SetAtt([CurCycle], 2.67745355179136);
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
SetAtt([BeginBusy], 6409.60609699716);
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
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(18);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
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


{Atom: Blue}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Blue], 1, false);
SetAtt([Icon3D], 11);
SetAtt([Hide2DIcon], 0);
SetAtt([ShowColor], 0);
SetAtt([RefProductEvents], 0);
SetAtomSettings([], 12615680, 73776);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\product.png]), [product], 1, 1, 16777215, 255, 255, false, 0));
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
SetLoadAtomID(20);
SetLoc(-7, 13, 0);
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
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(23);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(19, 24, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
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
Set(DdbRec, [>t-node:1.>t-node1:1.>t-netreference:978773040.]);
SetChannels(0, 4);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(25);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetLoc(10, 25, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(3, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-2`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
0
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
0
0
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
0
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
0
0
0
]);
SetStatus(0);
ExecLateInit;


{Atom: Network Controller 1}

sets;
AtomByName([Network Controller], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Network Controller'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Network Controller 1], 1, false);
SetAtt([network], 1);
SetAtt([optimize], 1);
SetAtt([distancetable], 978774000);
SetAtt([nodetable], 978774960);
SetAtt([pointertable], 978775920);
SetAtt([renamenodes], 1);
SetAtt([angletable], 978776880);
SetAtt([atomtable], 978777840);
SetAtt([batterytable], 978778800);
SetAtt([batterydistancetable], 978779760);
SetAtomSettings([], 0, 530464);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\NetworkController.ico]));
Set(DdbRec, [>atom1:414958704.]);
SetLoadAtomID(26);
SetLoc(5, 0, 0);
SetSize(9, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 4);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [`N1-1`
``
1
1
1
]);
CreateTableColumn(2, 0, [`N1-2`
1
``
1
1
]);
CreateTableColumn(3, 0, [`N1-3`
1
1
``
1
]);
CreateTableColumn(4, 0, [`N1-4`
1
1
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
SetLoadAtomID(27);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 4);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [`N1-1`
0
5
16
16.2788205960997
]);
CreateTableColumn(2, 0, [`N1-2`
5
0
11
11.4017542509914
]);
CreateTableColumn(3, 0, [`N1-3`
16
11
0
3
]);
CreateTableColumn(4, 0, [`N1-4`
16.2788205960997
11.4017542509914
3
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
SetLoadAtomID(28);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 4);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [`N1-1`
1
1
1
1
]);
CreateTableColumn(2, 0, [`N1-2`
2
2
2
2
]);
CreateTableColumn(3, 0, [`N1-3`
3
3
3
3
]);
CreateTableColumn(4, 0, [`N1-4`
4
4
4
4
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
SetChannels(0, 4);
SetLoadAtomID(29);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 1);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [1
978772080
978781680
978793200
978789360
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
SetLoadAtomID(30);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 4);
CreateTableColumn(0, 0, [``
`N1-1`
`N1-2`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [`N1-1`
``
90
90
100.619655276155
]);
CreateTableColumn(2, 0, [`N1-2`
270
``
90
105.255118703058
]);
CreateTableColumn(3, 0, [`N1-3`
270
270
``
180
]);
CreateTableColumn(4, 0, [`N1-4`
280.619655276155
285.255118703058
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
SetChannels(0, 4);
SetLoadAtomID(31);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(4, 2);
CreateTableColumn(0, 0, [``
`Pin stitchers`
`Start scanner`
`Assembly stage 1`
`De-paneling robot`
]);
CreateTableColumn(1, 0, [`Pointer Value`
414956784
414957744
414958704
934035552
]);
CreateTableColumn(2, 0, [`Connected Node`
3
1
4
2
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
SetLoadAtomID(32);
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
SetLoadAtomID(33);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 4);
CreateTableColumn(0, 0, [``
]);
CreateTableColumn(1, 0, [`Pin stitchers`
]);
CreateTableColumn(2, 0, [`Start scanner`
]);
CreateTableColumn(3, 0, [`Assembly stage 1`
]);
CreateTableColumn(4, 0, [`De-paneling robot`
]);
SetStatus(0);
ExecLateInit;
Up;


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
Set(DdbRec, [>t-node:1.>t-node1:2.>t-netreference:978773040.]);
SetChannels(0, 4);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(38);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetLoc(10, 20, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(3, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-1`
`N1-3`
`N1-4`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
``
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
``
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
``
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
``
0
]);
SetStatus(0);
ExecLateInit;


{Atom: Operator 1}

sets;
AtomByName([HumanResource], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResource'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Operator 1], 1, false);
SetAtt([CurrentTask], 0);
SetAtt([Assigned], 0);
SetExprAtt([Speed], [1]);
SetAtt([Acceleration], 0);
SetAtt([Deceleration], 0);
SetAtt([UseWalkingNetwork], 0);
SetAtt([CurxDest], 13);
SetAtt([CuryDest], 9);
SetAtt([PrevAtom], 414956784);
SetAtt([UseTravel], 1);
SetAtt([OffNetwork], 0);
SetAtt([OffRoad], 0);
SetAtt([KeepSpeed], 1);
SetAtt([DistanceTable], 978774000);
SetAtt([NodeTable], 978774960);
SetAtt([PointerTable], 978775920);
SetAtt([ConnectionTable], 978773040);
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
SetAtt([OcToPrev], 3);
SetAtt([OcToCur], 3);
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
SetAtt([DisplayTeamName], 1);
SetAtt([DisplayStatus], 1);
SetAtt([CutOffMode], 0);
SetExprAtt([CutOffTime], [0]);
SetAtt([CutOff], 0);
SetAtt([LastTransportTask], 978786480);
SetAtt([DisplayNumberOfContent], 1);
SetExprAtt([MaxCapacity], [1]);
SetAtt([WalkStatus], 1);
SetAtt([DisplayDistanceTraveled], 0);
SetAtt([DistanceTraveled], 0);
SetAtomSettings([], 12615680, 66609);
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
SetLoadAtomID(42);
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


{Atom: HumanResourceTransportRouter1}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTransportRouter1], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [1]);
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
SetLoadAtomID(48);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(4, 22, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
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
Set(DdbRec, [>t-node:1.>t-node1:3.>t-netreference:978773040.]);
SetChannels(0, 4);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(53);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetLoc(10, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(3, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-1`
`N1-2`
`N1-4`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
0
]4DS]);
CreateTableColumn(5, 0, [4DS[`Penalty [m]`
``
0
0
]4DS]);
CreateTableColumn(6, 0, [`Use trigger`
``
1
0
]);
CreateTableColumn(7, 0, [`Entry trigger`
``
0
0
]);
CreateTableColumn(8, 0, [`Exit trigger`
``
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
Set(DdbRec, [>t-node:1.>t-node1:4.>t-netreference:978773040.]);
SetChannels(0, 4);
SetChannelRanges(0, 255, 0, 255);
SetLoadAtomID(54);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(3, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(4, 0, true, true, 0, 0, [], []);
SetLoc(13, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetTable(3, 8);
CreateTableColumn(0, 0, [`Direction`
`N1-1`
`N1-2`
`N1-3`
]);
CreateTableColumn(1, 0, [`Capacity`
1000000
1000000
1000000
]);
CreateTableColumn(2, 0, [`Content`
0
0
0
]);
CreateTableColumn(3, 0, [`Use speed limit`
0
0
0
]);
CreateTableColumn(4, 0, [4DS[`Speed limit [m/s]`
0
0
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


{Atom: HumanResourceTransportRouter2}

sets;
AtomByName([HumanResourceTransportRouter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'HumanResourceTransportRouter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [HumanResourceTransportRouter2], 1, false);
SetExprAtt([HumanResourcesTeam], [refHumanResourceTeam]);
SetAtt([NumberOfHRs], 1);
SetExprAtt([TaskPriority], [0]);
SetExprAtt([SkillHR], [0]);
SetExprAtt([SendTo], [4DS[{.if(CompareText(Name(last(c)),[~1]),~2,~3)|6. By atom name: if the atom name matches ~Red~ then send to channel ~1~ else ~2~..}if(CompareText(Name(last(c)),[Red]),1,2)]4DS]);
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
SetLoadAtomID(59);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(8, 5, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
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
Set(DdbRec, [>updateversion:10.6.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(62);
SetLoc(23, 5, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Node Manipulator31}

sets;
AtomByName([Node Manipulator], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Node Manipulator'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Node Manipulator31], 1, false);
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
SetLoadAtomID(40);
SetLoc(6, 2, 0);
SetSize(2, 2, 0);
LockPosition(false);
LockSize(true);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: StatusIndicator35}

sets;
AtomByName([StatusIndicator], Main);
if(not(AtomExists), Error([Cannot find mother atom 'StatusIndicator'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [StatusIndicator35], 1, false);
SetAtt([NumberOfSegments], 34);
SetTextAtt([Title], [Status Indicator]);
SetAtt([RefreshRate], 60);
SetAtt([StatusSelected], 0);
SetAtt([StatusesInitialized], 1);
SetAtt([TextColor], 0);
SetAtt([BorderColor], 0);
SetAtt([TextSizeTitle], 0.6);
SetAtt([TextSizeLegend], 0.8);
SetAtt([TitleVisible], 1);
SetAtt([SelectedStatusColor], 33023);
SetAtt([SelectedStatusBorderColor], 255);
SetAtt([SelectedStatusMaximumLength], 0);
SetAtt([NumberOfSegmentsDrawn], 0);
SetAtt([AutomaticScaling], 1);
SetAtt([Vertical], 0);
SetAtomSettings([], 0, 48);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\StatusIndicator.ico]));
SetChannels(1, 0);
SetChannelRanges(1, 1, 0, 0);
SetLoadAtomID(71);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(30, -6, 0);
SetSize(8.53333333333333, 6, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(34, 3);
CreateTableColumn(0, 64, [``
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
]);
CreateTableColumn(1, 64, [`SegmentScore`
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
]);
CreateTableColumn(2, 64, [`SegmentColor`
1442047
16711928
16711687
16771328
65280
3801343
16711891
16719104
15793920
65316
6226175
16711855
16728576
13434624
65353
8585471
16711818
16737792
11075328
65389
11010303
16711782
16747008
8650496
65426
13369599
16711746
16756480
6291200
65462
15728895
16711709
16765696
11010303
]);
CreateTableColumn(3, 64, [`SegmentName`
`Idle`
`Busy`
`Down`
`Waiting`
`Blocked`
`TravelFull`
`TravelEmpty`
`Lift Up`
`Lift Down`
`Not Down`
`Available`
`Not Available`
`Empty`
`Full`
`Not Empty`
`Load`
`Unload`
`Open`
`Closed`
`Waiting for Contents`
`Waiting for Package`
`Collecting`
`Contents Blocked`
`Distributing`
`Busy and Blocked`
`Conveying`
`Setup`
`Waiting for Job`
`On the Job`
`Waiting for Operator`
`Assigned`
`Take-Down`
`Travel to Job`
`Travel to Parking`
]);
SetStatus(0);
ExecLateInit;
Up;
ConnectLoadAtoms(1, 35, 1, 42, 0);
ConnectLoadAtoms(1, 1, 1, 5, 0);
ConnectLoadAtoms(0, 19, 1, 1, 0);
ConnectLoadAtoms(1, 2, 2, 59, 0);
ConnectLoadAtoms(1, 48, 1, 2, 0);
ConnectLoadAtoms(0, 5, 2, 2, 0);
ConnectLoadAtoms(0, 4, 3, 2, 0);
ConnectLoadAtoms(1, 3, 1, 4, 0);
ConnectLoadAtoms(1, 8, 1, 3, 0);
ConnectLoadAtoms(1, 4, 1, 59, 0);
ConnectLoadAtoms(0, 2, 2, 4, 0);
ConnectLoadAtoms(1, 5, 1, 48, 0);
ConnectLoadAtoms(0, 2, 2, 5, 0);
ConnectLoadAtoms(1, 6, 1, 7, 0);
ConnectLoadAtoms(1, 59, 1, 6, 0);
ConnectLoadAtoms(2, 59, 2, 6, 0);
ConnectLoadAtoms(1, 7, 1, 9, 0);
ConnectLoadAtoms(0, 20, 1, 8, 0);
ConnectLoadAtoms(1, 9, 1, 10, 0);
ConnectLoadAtoms(1, 10, 1, 12, 0);
ConnectLoadAtoms(1, 11, 1, 13, 0);
ConnectLoadAtoms(1, 12, 1, 11, 0);
ConnectLoadAtoms(1, 13, 1, 14, 0);
ConnectLoadAtoms(1, 14, 1, 15, 0);
ConnectLoadAtoms(1, 15, 1, 16, 0);
ConnectLoadAtoms(1, 16, 1, 17, 0);
ConnectLoadAtoms(1, 17, 1, 23, 0);
ConnectLoadAtoms(1, 18, 1, 21, 0);
ConnectLoadAtoms(1, 23, 1, 18, 0);
ConnectLoadAtoms(1, 25, 0, 38, 0);
ConnectLoadAtoms(2, 25, 0, 53, 0);
ConnectLoadAtoms(3, 25, 0, 54, 0);
ConnectLoadAtoms(4, 25, 0, 5, 0);
ConnectLoadAtoms(1, 29, 0, 25, 0);
ConnectLoadAtoms(2, 29, 0, 38, 0);
ConnectLoadAtoms(3, 29, 0, 53, 0);
ConnectLoadAtoms(4, 29, 0, 54, 0);
ConnectLoadAtoms(1, 31, 0, 5, 0);
ConnectLoadAtoms(2, 31, 0, 2, 0);
ConnectLoadAtoms(3, 31, 0, 4, 0);
ConnectLoadAtoms(4, 31, 0, 6, 0);
ConnectLoadAtoms(1, 38, 0, 25, 0);
ConnectLoadAtoms(2, 38, 0, 53, 0);
ConnectLoadAtoms(3, 38, 0, 54, 0);
ConnectLoadAtoms(4, 38, 0, 2, 0);
ConnectLoadAtoms(1, 42, 0, 25, 0);
ConnectLoadAtoms(2, 42, 0, 25, 0);
ConnectLoadAtoms(0, 25, 2, 42, 0);
ConnectLoadAtoms(3, 42, 0, 25, 0);
ConnectLoadAtoms(1, 53, 0, 25, 0);
ConnectLoadAtoms(2, 53, 0, 38, 0);
ConnectLoadAtoms(3, 53, 0, 54, 0);
ConnectLoadAtoms(4, 53, 0, 4, 0);
ConnectLoadAtoms(1, 54, 0, 25, 0);
ConnectLoadAtoms(2, 54, 0, 38, 0);
ConnectLoadAtoms(3, 54, 0, 53, 0);
ConnectLoadAtoms(4, 54, 0, 6, 0);
ConnectLoadAtoms(0, 42, 1, 71, 0);
LoadEvent(0, 1, 1, 0, 0, 0);
LoadEvent(0, 8, 1, 0, 0, 0);
LoadEvent(0, 71, 3001, 0, 0, 0);
LoadEvent(1, 71, 3002, 0, 0, 0);


{Experiment settings}

ActivateExperimentAtom;
SetAtt(17, 1);

{Saved Model3D settings.}

ExecOnCreationOnLoad;
