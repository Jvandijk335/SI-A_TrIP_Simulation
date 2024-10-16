{10.6.0.3437}
{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

StoreActiveAtom;
LoadAtomFromFile([Product], pDir([Atoms\BASIC MODELING\Product.atm]));
LoadAtomFromFile([Sink], pDir([Atoms\BASIC MODELING\Sink.atm]));
LoadAtomFromFile([Source], pDir([Atoms\BASIC MODELING\Source.atm]));
LoadAtomFromFile([Accumulating Conveyor], pDir([Atoms\TRANSPORT\CONVEYORS\ACCUMULATING\Accumulating Conveyor.atm]));
LoadAtomFromFile([Advanced Accumulating Conveyor Straight], pDir([Atoms\TRANSPORT\CONVEYORS\ACCUMULATING\Advanced Accumulating Conveyor Straight.atm]));
LoadAtomFromFile([Corner Transfer Unit], pDir([Atoms\TRANSPORT\CONVEYORS\INTERSECTIONS\Corner Transfer Unit.atm]));
RestoreActiveAtom;


{Atom: Product}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, s, [Product], 1, false);
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
Set(DdbRec, [>drawxsize:0.5.>drawysize:0.5.]);
SetLoadAtomID(1);
SetLoc(33, 2, 0);
SetSize(0.5, 0.5, 0.5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
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
Set(DdbRec, [>drawxsize:0.5.>drawysize:0.5.]);
SetLoadAtomID(2);
SetLoc(13, 2, 0);
SetSize(0.5, 0.5, 0.5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
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
Set(DdbRec, [>drawxsize:0.5.>drawysize:0.5.]);
SetLoadAtomID(3);
SetLoc(25, 18, 0);
SetSize(0.5, 0.5, 0.5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
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
Set(DdbRec, [>drawxsize:0.5.>drawysize:0.5.]);
SetLoadAtomID(4);
SetLoc(47, 17, 0);
SetSize(0.5, 0.5, 0.5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
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
Set(DdbRec, [>drawxsize:0.5.>drawysize:0.5.]);
SetLoadAtomID(5);
SetLoc(2, 9, 0);
SetSize(0.5, 0.5, 0.5);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
ExecLateInit;


{Atom: Machine 1}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Machine 1], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Uniform(7, 8)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [Uniform(7, 8)]);
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
SetLoadAtomID(6);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(5, 9, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Machine 2}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Machine 2], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Uniform(10.2, 11.2)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [Uniform(10.2, 11.2)]);
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
SetLoadAtomID(7);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(16, 2, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Machine 3}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Machine 3], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Uniform(7, 8)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [Uniform(7, 8)]);
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
SetLoc(36, 2, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Machine 4}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Machine 4], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Uniform(7,8)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [Uniform(7,8)]);
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
SetLoadAtomID(9);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(30, 17, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Machine 5}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Machine 5], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [Uniform(7, 8)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [Uniform(7, 8)]);
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
SetLoadAtomID(10);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(50, 17, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
ExecLateInit;


{Atom: Corner Transfer Unit 1}

sets;
AtomByName([Corner Transfer Unit], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Corner Transfer Unit'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Corner Transfer Unit 1], 1, false);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([EntryTrigger], [Do (
  CloseInput(out(2,c)),
  LoopUntil(Content(Central(1,c)) = 0, Break)
)]);
SetExprAtt([ExitTrigger], [OpenInput(out(2,c))]);
SetAtt([CurIC], 0);
SetAtt([CurOC], 0);
SetExprAtt([Speed], [0]);
SetExprAtt([TransferTime], [10]);
SetAtt([CurTransferTime], 10);
SetAtt([InitialRotation], 0);
SetAtt([DrawLegs], 0);
SetAtt([TransferAnimate], 1);
SetAtt([StraightFlag], 0);
SetAtt([CTUAtom], 1030904016);
SetAtt([LibCat], 0);
SetAtt([LibSubCat], 0);
SetExprAtt([IsConveyor], [16]);
SetAtt([ExitTime], 1E20);
SetAtt([TransferTimeFlag], 0);
SetAtt([TransferTimeAhead], 0);
SetAtt([MoveInFlag], 0);
SetAtt([Icon3D], 4);
SetAtt([AutoDetect], 1);
SetExprAtt([LegExtend], [zSize(c)]);
SetAtt([ModifyProduct2D], 0);
SetExprAtt([ResetTrigger], [0]);
SetExprAtt([ProductMovement], [1]);
SetAtt([UsePhysicalDimensions], 0);
SetAtomSettings([], 10789024, 66738);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\product.png]), [product], 1, 1, 16777215, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
AddTexture(
	RegisterTexture(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 256, 256, 1, 1, 0, 0, 0, 0), a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Corner Transfer Unit.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 3, 1, 3);
SetLoadAtomID(11);
SetChannelRequestCount(1, 0, false, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(20, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(3, 4);
CreateTableColumn(0, 64, [`channel`
`ic_1`
`oc_1`
`oc_2`
]);
CreateTableColumn(1, 64, [`atomname`
`Side Accumulating Conveyor 1`
`Advanced Accumulating Conveyor Straight 2`
`Accumulating Conveyor 1`
]);
CreateTableColumn(2, 64, [`rotationas`
90
0
0
]);
CreateTableColumn(3, 64, [`x_motionflag`
0
1
1
]);
CreateTableColumn(4, 64, [`y_motionflag`
1
0
0
]);
SetStatus(13);
ExecLateInit;


{Atom: Corner Transfer Unit 2}

sets;
AtomByName([Corner Transfer Unit], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Corner Transfer Unit'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Corner Transfer Unit 2], 1, false);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([EntryTrigger], [Do (
  CloseInput(out(2,c)),
  LoopUntil(Content(Central(1,c)) = 0, Break)
)]);
SetExprAtt([ExitTrigger], [OpenInput(out(2,c))]);
SetAtt([CurIC], 0);
SetAtt([CurOC], 0);
SetExprAtt([Speed], [0]);
SetExprAtt([TransferTime], [2]);
SetAtt([CurTransferTime], 2);
SetAtt([InitialRotation], 0);
SetAtt([DrawLegs], 1);
SetAtt([TransferAnimate], 1);
SetAtt([StraightFlag], 1);
SetAtt([CTUAtom], 968686736);
SetAtt([LibCat], 0);
SetAtt([LibSubCat], 0);
SetExprAtt([IsConveyor], [16]);
SetAtt([ExitTime], 1E20);
SetAtt([TransferTimeFlag], 0);
SetAtt([TransferTimeAhead], 0);
SetAtt([MoveInFlag], 0);
SetAtt([Icon3D], 4);
SetAtt([AutoDetect], 1);
SetExprAtt([LegExtend], [zSize(c)]);
SetAtt([ModifyProduct2D], 0);
SetExprAtt([ResetTrigger], [0]);
SetExprAtt([ProductMovement], [1]);
SetAtt([UsePhysicalDimensions], 0);
SetAtomSettings([], 10789024, 66738);
Set(Icon(a), 
	RegisterIcon(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
AddTexture(
	RegisterTexture(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 256, 256, 1, 1, 0, 0, 0, 0), a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Corner Transfer Unit.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 3, 1, 3);
SetLoadAtomID(29);
SetChannelRequestCount(1, 0, false, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(40, 9, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(3, 4);
CreateTableColumn(0, 64, [`channel`
`ic_1`
`oc_1`
`oc_2`
]);
CreateTableColumn(1, 64, [`atomname`
`Side Accumulating Conveyor 2`
`Advanced Accumulating Conveyor Straight 4`
`Accumulating Conveyor 3`
]);
CreateTableColumn(2, 64, [`rotationas`
90
0
0
]);
CreateTableColumn(3, 64, [`x_motionflag`
0
1
1
]);
CreateTableColumn(4, 64, [`y_motionflag`
1
0
0
]);
SetStatus(13);
ExecLateInit;


{Atom: Corner Transfer Unit 3}

sets;
AtomByName([Corner Transfer Unit], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Corner Transfer Unit'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Corner Transfer Unit 3], 1, false);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([EntryTrigger], [Do (
  CloseInput(out(2,c)),
  LoopUntil(Content(Central(1,c)) = 0, Break)
)]);
SetExprAtt([ExitTrigger], [OpenInput(out(2,c))]);
SetAtt([CurIC], 0);
SetAtt([CurOC], 0);
SetExprAtt([Speed], [0]);
SetExprAtt([TransferTime], [2]);
SetAtt([CurTransferTime], 2);
SetAtt([InitialRotation], 0);
SetAtt([DrawLegs], 0);
SetAtt([TransferAnimate], 1);
SetAtt([StraightFlag], 1);
SetAtt([CTUAtom], 967151808);
SetAtt([LibCat], 0);
SetAtt([LibSubCat], 0);
SetExprAtt([IsConveyor], [16]);
SetAtt([ExitTime], 1E20);
SetAtt([TransferTimeFlag], 0);
SetAtt([TransferTimeAhead], 0);
SetAtt([MoveInFlag], 0);
SetAtt([Icon3D], 4);
SetAtt([AutoDetect], 1);
SetExprAtt([LegExtend], [zSize(c)]);
SetAtt([ModifyProduct2D], 0);
SetExprAtt([ResetTrigger], [0]);
SetExprAtt([ProductMovement], [1]);
SetAtt([UsePhysicalDimensions], 0);
SetAtomSettings([], 10789024, 66738);
Set(Icon(a), 
	RegisterIcon(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
AddTexture(
	RegisterTexture(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 256, 256, 1, 1, 0, 0, 0, 0), a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Corner Transfer Unit.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 3, 1, 3);
SetLoadAtomID(13);
SetChannelRequestCount(1, 0, false, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(30, 11, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(3, 4);
CreateTableColumn(0, 64, [`channel`
`ic_1`
`oc_1`
`oc_2`
]);
CreateTableColumn(1, 64, [`atomname`
`Side Accumulating Conveyor 3`
`Advanced Accumulating Conveyor Straight 3`
`Accumulating Conveyor 2`
]);
CreateTableColumn(2, 64, [`rotationas`
270
0
0
]);
CreateTableColumn(3, 64, [`x_motionflag`
0
1
1
]);
CreateTableColumn(4, 64, [`y_motionflag`
-1
0
0
]);
SetStatus(13);
ExecLateInit;


{Atom: Corner Transfer Unit 4}

sets;
AtomByName([Corner Transfer Unit], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Corner Transfer Unit'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Corner Transfer Unit 4], 1, false);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([EntryTrigger], [Do (
  CloseInput(out(2,c)),
  LoopUntil(Content(Central(1,c)) = 0, Break)
)]);
SetExprAtt([ExitTrigger], [OpenInput(out(2,c))]);
SetAtt([CurIC], 0);
SetAtt([CurOC], 0);
SetExprAtt([Speed], [0]);
SetExprAtt([TransferTime], [5]);
SetAtt([CurTransferTime], 5);
SetAtt([InitialRotation], 0);
SetAtt([DrawLegs], 1);
SetAtt([TransferAnimate], 1);
SetAtt([StraightFlag], 1);
SetAtt([CTUAtom], 1030903056);
SetAtt([LibCat], 0);
SetAtt([LibSubCat], 0);
SetExprAtt([IsConveyor], [16]);
SetAtt([ExitTime], 1E20);
SetAtt([TransferTimeFlag], 0);
SetAtt([TransferTimeAhead], 0);
SetAtt([MoveInFlag], 0);
SetAtt([Icon3D], 4);
SetAtt([AutoDetect], 1);
SetExprAtt([LegExtend], [zSize(c)]);
SetAtt([ModifyProduct2D], 0);
SetExprAtt([ResetTrigger], [0]);
SetExprAtt([ProductMovement], [1]);
SetAtt([UsePhysicalDimensions], 0);
SetAtomSettings([], 10789024, 66738);
Set(Icon(a), 
	RegisterIcon(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 1, 0, 0, 255, 255, false, 0));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
AddTexture(
	RegisterTexture(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 256, 256, 1, 1, 0, 0, 0, 0), a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Corner Transfer Unit.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 3, 1, 3);
SetLoadAtomID(30);
SetChannelRequestCount(1, 0, false, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(50, 11, 0);
SetSize(1, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(3, 4);
CreateTableColumn(0, 64, [`channel`
`ic_1`
`oc_1`
`oc_2`
]);
CreateTableColumn(1, 64, [`atomname`
`Side Accumulating Conveyor 4`
`Advanced Accumulating Conveyor Straight 5`
`Accumulating Conveyor 4`
]);
CreateTableColumn(2, 64, [`rotationas`
270
0
0
]);
CreateTableColumn(3, 64, [`x_motionflag`
0
1
1
]);
CreateTableColumn(4, 64, [`y_motionflag`
-1
0
0
]);
SetStatus(13);
ExecLateInit;


{Atom: Advanced Accumulating Conveyor Straight 1}

sets;
AtomByName([Advanced Accumulating Conveyor Straight], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Accumulating Conveyor Straight'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Advanced Accumulating Conveyor Straight 1], 1, false);
CreateAttributes(1);
SetAttributeName(r(1), [Sensor1], a);
SetAttribute(r(1), [Sensor1], vbVariant, [=0], a, [public], [], false);
SetAtt([AtomToEnd], 0);
SetAtt([BeginPos], 0);
SetAtt([Capacity], 1000);
SetExprAtt([DelayTime], [0]);
SetAtt([EffectOnPredecessor], 0);
SetExprAtt([Elevation], [0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Gap], 1);
SetAtt([GapWindow], 0);
SetAtt([KeepSpacing], 0);
SetAtt([HorizontalSpeed], 1);
SetAtt([InputLength], 9);
SetAtt([IsConveyor], 3);
SetAtt([Length], 9);
SetAtt([LengthFactor], 1);
SetAtt([nrSensors], 1);
SetAtt([SpacingRule], 1);
SetExprAtt([Speed], [1]);
SetAtt([StartStopPredecessor], 0);
SetAtt([TempAtomToEnd], 1);
SetAtt([UsePhysicalLength], 1);
SetAtt([UseSensors], 0);
SetAtt([VerticalSpeed], 0);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([ResetTrigger], [0]);
SetAtt([LastEntered], 0);
SetAtt([SmallerThanBag], 0);
SetAtt([LastIC], 0);
SetAtt([DrawLegs], 1);
SetExprAtt([LegExtend], [zLoc(c)]);
SetExprAtt([LegSpacing], [1]);
SetExprAtt([SideSkirtWidth], [0.05]);
SetExprAtt([SideSkirtHeight], [0]);
SetExprAtt([SideSkirtDistanceToBelt], [0.01]);
SetExprAtt([TransportHeight], [1]);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 9266);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AdvancedAccumulatingConveyor.ico]));
Set(DdbRec, [>atomversion:7.3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(15);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(10, 10, 1);
SetSize(9, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 7);
CreateTableColumn(0, 0, [`Nr`
1
]);
CreateTableColumn(1, 0, [`Sensor Position`
9
]);
CreateTableColumn(2, 0, [`Attribute Nr`
`Sensor1`
]);
CreateTableColumn(3, 0, [`Use Release`
0
]);
CreateTableColumn(4, 0, [`Release Trigger`
0
]);
CreateTableColumn(5, 0, [`Spacing Rule`
0
]);
CreateTableColumn(6, 0, [`Time Blocked`
0
]);
CreateTableColumn(7, 0, [`Blocking atom`
0
]);
SetStatus(13);
ExecLateInit;


{Atom: Advanced Accumulating Conveyor Straight 2}

sets;
AtomByName([Advanced Accumulating Conveyor Straight], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Accumulating Conveyor Straight'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Advanced Accumulating Conveyor Straight 2], 1, false);
SetAtt([AtomToEnd], 0);
SetAtt([BeginPos], 0);
SetAtt([Capacity], 1000);
SetExprAtt([DelayTime], [0]);
SetAtt([EffectOnPredecessor], 0);
SetExprAtt([Elevation], [0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Gap], 0);
SetAtt([GapWindow], 0);
SetAtt([KeepSpacing], 0);
SetAtt([HorizontalSpeed], 1);
SetAtt([InputLength], 9);
SetAtt([IsConveyor], 3);
SetAtt([Length], 9);
SetAtt([LengthFactor], 1);
SetAtt([nrSensors], 0);
SetAtt([SpacingRule], 0);
SetExprAtt([Speed], [1]);
SetAtt([StartStopPredecessor], 0);
SetAtt([TempAtomToEnd], 1);
SetAtt([UsePhysicalLength], 1);
SetAtt([UseSensors], 0);
SetAtt([VerticalSpeed], 0);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([ResetTrigger], [0]);
SetAtt([LastEntered], 0);
SetAtt([SmallerThanBag], 0);
SetAtt([LastIC], 0);
SetAtt([DrawLegs], 1);
SetExprAtt([LegExtend], [zLoc(c)]);
SetExprAtt([LegSpacing], [1]);
SetExprAtt([SideSkirtWidth], [0.05]);
SetExprAtt([SideSkirtHeight], [0]);
SetExprAtt([SideSkirtDistanceToBelt], [0.01]);
SetExprAtt([TransportHeight], [1]);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 9266);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AdvancedAccumulatingConveyor.ico]));
Set(DdbRec, [>atomversion:7.3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(19);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(20, 10, 1);
SetSize(9, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 7);
CreateTableColumn(0, 0, [``
]);
CreateTableColumn(1, 0, [1
]);
CreateTableColumn(2, 0, [2
]);
CreateTableColumn(3, 0, [3
]);
CreateTableColumn(4, 0, [4
]);
CreateTableColumn(5, 0, [5
]);
CreateTableColumn(6, 0, [6
]);
CreateTableColumn(7, 0, [7
]);
SetStatus(13);
ExecLateInit;


{Atom: Advanced Accumulating Conveyor Straight 3}

sets;
AtomByName([Advanced Accumulating Conveyor Straight], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Accumulating Conveyor Straight'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Advanced Accumulating Conveyor Straight 3], 1, false);
SetAtt([AtomToEnd], 0);
SetAtt([BeginPos], 0);
SetAtt([Capacity], 1000);
SetExprAtt([DelayTime], [0]);
SetAtt([EffectOnPredecessor], 0);
SetExprAtt([Elevation], [0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Gap], 0);
SetAtt([GapWindow], 0);
SetAtt([KeepSpacing], 0);
SetAtt([HorizontalSpeed], 1);
SetAtt([InputLength], 9);
SetAtt([IsConveyor], 3);
SetAtt([Length], 9);
SetAtt([LengthFactor], 1);
SetAtt([nrSensors], 0);
SetAtt([SpacingRule], 1);
SetExprAtt([Speed], [1]);
SetAtt([StartStopPredecessor], 0);
SetAtt([TempAtomToEnd], 1);
SetAtt([UsePhysicalLength], 1);
SetAtt([UseSensors], 0);
SetAtt([VerticalSpeed], 0);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([ResetTrigger], [0]);
SetAtt([LastEntered], 0);
SetAtt([SmallerThanBag], 0);
SetAtt([LastIC], 0);
SetAtt([DrawLegs], 1);
SetExprAtt([LegExtend], [zLoc(c)]);
SetExprAtt([LegSpacing], [1]);
SetExprAtt([SideSkirtWidth], [0.05]);
SetExprAtt([SideSkirtHeight], [0]);
SetExprAtt([SideSkirtDistanceToBelt], [0.01]);
SetExprAtt([TransportHeight], [1]);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 9266);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AdvancedAccumulatingConveyor.ico]));
Set(DdbRec, [>atomversion:7.3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(20);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(30, 10, 1);
SetSize(9, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 7);
CreateTableColumn(0, 0, [``
]);
CreateTableColumn(1, 0, [1
]);
CreateTableColumn(2, 0, [2
]);
CreateTableColumn(3, 0, [3
]);
CreateTableColumn(4, 0, [4
]);
CreateTableColumn(5, 0, [5
]);
CreateTableColumn(6, 0, [6
]);
CreateTableColumn(7, 0, [7
]);
SetStatus(13);
ExecLateInit;


{Atom: Advanced Accumulating Conveyor Straight 4}

sets;
AtomByName([Advanced Accumulating Conveyor Straight], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Accumulating Conveyor Straight'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Advanced Accumulating Conveyor Straight 4], 1, false);
SetAtt([AtomToEnd], 0);
SetAtt([BeginPos], 0);
SetAtt([Capacity], 1000);
SetExprAtt([DelayTime], [0]);
SetAtt([EffectOnPredecessor], 0);
SetExprAtt([Elevation], [0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Gap], 0);
SetAtt([GapWindow], 0);
SetAtt([KeepSpacing], 0);
SetAtt([HorizontalSpeed], 1);
SetAtt([InputLength], 9);
SetAtt([IsConveyor], 3);
SetAtt([Length], 9);
SetAtt([LengthFactor], 1);
SetAtt([nrSensors], 0);
SetAtt([SpacingRule], 1);
SetExprAtt([Speed], [1]);
SetAtt([StartStopPredecessor], 0);
SetAtt([TempAtomToEnd], 1);
SetAtt([UsePhysicalLength], 1);
SetAtt([UseSensors], 0);
SetAtt([VerticalSpeed], 0);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([ResetTrigger], [0]);
SetAtt([LastEntered], 0);
SetAtt([SmallerThanBag], 0);
SetAtt([LastIC], 0);
SetAtt([DrawLegs], 1);
SetExprAtt([LegExtend], [zLoc(c)]);
SetExprAtt([LegSpacing], [1]);
SetExprAtt([SideSkirtWidth], [0.05]);
SetExprAtt([SideSkirtHeight], [0]);
SetExprAtt([SideSkirtDistanceToBelt], [0.01]);
SetExprAtt([TransportHeight], [1]);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 9266);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AdvancedAccumulatingConveyor.ico]));
Set(DdbRec, [>atomversion:7.3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(17);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(40, 10, 1);
SetSize(9, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 7);
CreateTableColumn(0, 0, [``
]);
CreateTableColumn(1, 0, [1
]);
CreateTableColumn(2, 0, [2
]);
CreateTableColumn(3, 0, [3
]);
CreateTableColumn(4, 0, [4
]);
CreateTableColumn(5, 0, [5
]);
CreateTableColumn(6, 0, [6
]);
CreateTableColumn(7, 0, [7
]);
SetStatus(13);
ExecLateInit;


{Atom: Advanced Accumulating Conveyor Straight 5}

sets;
AtomByName([Advanced Accumulating Conveyor Straight], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Advanced Accumulating Conveyor Straight'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Advanced Accumulating Conveyor Straight 5], 1, false);
SetAtt([AtomToEnd], 0);
SetAtt([BeginPos], 0);
SetAtt([Capacity], 1000);
SetExprAtt([DelayTime], [0]);
SetAtt([EffectOnPredecessor], 0);
SetExprAtt([Elevation], [0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Gap], 0);
SetAtt([GapWindow], 0);
SetAtt([KeepSpacing], 0);
SetAtt([HorizontalSpeed], 1);
SetAtt([InputLength], 10);
SetAtt([IsConveyor], 3);
SetAtt([Length], 10);
SetAtt([LengthFactor], 1);
SetAtt([nrSensors], 0);
SetAtt([SpacingRule], 1);
SetExprAtt([Speed], [1]);
SetAtt([StartStopPredecessor], 0);
SetAtt([TempAtomToEnd], 1);
SetAtt([UsePhysicalLength], 1);
SetAtt([UseSensors], 0);
SetAtt([VerticalSpeed], 0);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([ResetTrigger], [0]);
SetAtt([LastEntered], 0);
SetAtt([SmallerThanBag], 0);
SetAtt([LastIC], 0);
SetAtt([DrawLegs], 1);
SetExprAtt([LegExtend], [zLoc(c)]);
SetExprAtt([LegSpacing], [1]);
SetExprAtt([SideSkirtWidth], [0.05]);
SetExprAtt([SideSkirtHeight], [0]);
SetExprAtt([SideSkirtDistanceToBelt], [0.01]);
SetExprAtt([TransportHeight], [1]);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 9266);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AdvancedAccumulatingConveyor.ico]));
Set(DdbRec, [>atomversion:7.3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(18);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, true, 0, 0, [], []);
SetLoc(50, 10, 1);
SetSize(10, 1, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(0, 7);
CreateTableColumn(0, 0, [``
]);
CreateTableColumn(1, 0, [1
]);
CreateTableColumn(2, 0, [2
]);
CreateTableColumn(3, 0, [3
]);
CreateTableColumn(4, 0, [4
]);
CreateTableColumn(5, 0, [5
]);
CreateTableColumn(6, 0, [6
]);
CreateTableColumn(7, 0, [7
]);
SetStatus(13);
ExecLateInit;


{Atom: Accumulating Conveyor 1}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Accumulating Conveyor 1], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 0.0829112901565168);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 1);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 1);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(24);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 10, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Accumulating Conveyor 2}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Accumulating Conveyor 2], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 0.496781246839419);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 1);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 1);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(25);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(29, 10, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Accumulating Conveyor 3}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Accumulating Conveyor 3], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 0.5);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 1);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 1);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(26);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(39, 10, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Accumulating Conveyor 4}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Accumulating Conveyor 4], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 0.0355349707351706);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 1);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 1);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(28);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetChannelRequestCount(2, 0, true, false, 0, 0, [], []);
SetLoc(49, 10, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Side Accumulating Conveyor 1}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Side Accumulating Conveyor 1], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 4.5);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 5);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 2);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(16);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(21, 4, 0);
SetSize(5, 1, 0);
Set(RotationAs, 90);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Side Accumulating Conveyor 2}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Side Accumulating Conveyor 2], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 4.5);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 5);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 2);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(23);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(41, 4, 0);
SetSize(5, 1, 1);
Set(RotationAs, 90);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Side Accumulating Conveyor 3}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Side Accumulating Conveyor 3], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 4.5);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 5);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 2);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(21);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(30, 17, 0);
SetSize(5, 1, 1);
Set(RotationAs, 270);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Side Accumulating Conveyor 4}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Side Accumulating Conveyor 4], 1, false);
SetExprAtt([Speed], [1]);
SetExprAtt([TravelTimeC], [Length / Speed]);
SetAtt([TempMaxLoc], 4.5);
SetExprAtt([CurLoc], [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt([ExitTime], 0);
SetAtt([CurContent], 0);
SetExprAtt([Length], [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([TimeOfEntry], 0);
SetAtt([ExitLength], 0.5);
SetExprAtt([CalcLocations], [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Capacity], 10000);
SetAtt([SpacingRule], 1);
SetExprAtt([Spacing], [0]);
SetExprAtt([ExitTrigger], [0]);
SetAtt([Use_Physical], 1);
SetAtt([Input_Length], 5);
SetAtt([Display_Factor], 1);
SetAtt([Leg_Supports], 2);
SetExprAtt([Elevation], [0]);
SetExprAtt([Angle], [ArcTan(Elevation / Hor_Length)]);
SetExprAtt([Hor_Length], [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt([IsConveyor], 5);
SetAtt([Transparency], 0);
SetAtomSettings([], 11249415, 1074);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
SetLoadAtomID(22);
SetChannelRequestCount(1, 0, true, false, 0, 0, [], []);
SetLoc(50, 17, 0);
SetSize(5, 1, 1);
Set(RotationAs, 270);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
ExecLateInit;


{Atom: Warehouse}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Warehouse], 1, false);
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
SetChannels(1, 0);
SetChannelRanges(1, 255, 0, 0);
SetLoadAtomID(27);
SetChannelRequestCount(1, 0, true, true, 0, 0, [], []);
SetLoc(60, 9, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
ExecLateInit;
Up;
ConnectLoadAtoms(1, 6, 1, 15, 0);
ConnectLoadAtoms(0, 5, 1, 6, 0);
ConnectLoadAtoms(1, 7, 1, 16, 0);
ConnectLoadAtoms(0, 2, 1, 7, 0);
ConnectLoadAtoms(1, 8, 1, 23, 0);
ConnectLoadAtoms(0, 1, 1, 8, 0);
ConnectLoadAtoms(1, 9, 1, 21, 0);
ConnectLoadAtoms(0, 3, 1, 9, 0);
ConnectLoadAtoms(1, 10, 1, 22, 0);
ConnectLoadAtoms(0, 4, 1, 10, 0);
ConnectLoadAtoms(1, 11, 2, 19, 0);
ConnectLoadAtoms(1, 16, 1, 11, 0);
ConnectLoadAtoms(2, 11, 0, 24, 0);
ConnectLoadAtoms(2, 29, 0, 26, 0);
ConnectLoadAtoms(1, 13, 2, 20, 0);
ConnectLoadAtoms(1, 21, 1, 13, 0);
ConnectLoadAtoms(2, 13, 0, 25, 0);
ConnectLoadAtoms(2, 30, 0, 28, 0);
ConnectLoadAtoms(1, 15, 1, 24, 0);
ConnectLoadAtoms(1, 19, 1, 25, 0);
ConnectLoadAtoms(1, 24, 1, 19, 0);
ConnectLoadAtoms(1, 20, 1, 26, 0);
ConnectLoadAtoms(1, 25, 1, 20, 0);
ConnectLoadAtoms(1, 17, 1, 28, 0);
ConnectLoadAtoms(1, 26, 1, 17, 0);
ConnectLoadAtoms(1, 29, 2, 17, 0);
ConnectLoadAtoms(1, 18, 1, 27, 0);
ConnectLoadAtoms(1, 28, 1, 18, 0);
ConnectLoadAtoms(1, 30, 2, 18, 0);
ConnectLoadAtoms(2, 24, 0, 11, 0);
ConnectLoadAtoms(2, 25, 0, 13, 0);
ConnectLoadAtoms(2, 26, 0, 29, 0);
ConnectLoadAtoms(2, 28, 0, 30, 0);
ConnectLoadAtoms(1, 23, 1, 29, 0);
ConnectLoadAtoms(1, 22, 1, 30, 0);
LoadEvent(7.75260369658478, 6, 1, 0, 0, 0);
LoadEvent(11.0248679013783, 7, 1, 0, 0, 0);
LoadEvent(7.70873466089165, 8, 1, 0, 0, 0);
LoadEvent(7.10590811193209, 9, 1, 0, 0, 0);
LoadEvent(7.21054641472712, 10, 1, 0, 0, 0);
LoadEvent(0, 11, 1, 0, 0, 0);
LoadEvent(0, 29, 1, 0, 0, 0);
LoadEvent(0, 13, 1, 0, 0, 0);
LoadEvent(0, 30, 1, 0, 0, 0);


{Experiment settings}

CreateExperimentTable(1, 8, 6);
SetExperimentTableRow(1, 1, 1, [RESULTS]);
SetExperimentTableRow(1, 1, 2, [10]);
SetExperimentTableRow(1, 1, 3, [7]);
SetExperimentTableRow(1, 1, 4, [6]);
SetExperimentTableRow(1, 1, 5, [0]);
SetExperimentTableRow(1, 1, 6, [0]);
SetExperimentTableRow(1, 2, 1, [Machines]);
SetExperimentTableRow(1, 2, 2, [2]);
SetExperimentTableRow(1, 2, 3, [Production]);
SetExperimentTableRow(1, 2, 4, [4DS[[OUTPUT]]4DS]);
SetExperimentTableRow(1, 2, 5, [STATUS]);
SetExperimentTableRow(1, 2, 6, [4DS[[STATUS]]4DS]);
SetExperimentTableRow(1, 3, 1, [Main conveyor]);
SetExperimentTableRow(1, 3, 2, [2]);
SetExperimentTableRow(1, 3, 3, [AVGCONTENT]);
SetExperimentTableRow(1, 3, 4, [4DS[[AVGCONTENT]]4DS]);
SetExperimentTableRow(1, 3, 5, [AVGSTAY]);
SetExperimentTableRow(1, 3, 6, [4DS[[AVGSTAY]]4DS]);
SetExperimentTableRow(1, 4, 1, [Side Accumulating Conveyor 1]);
SetExperimentTableRow(1, 4, 2, [1]);
SetExperimentTableRow(1, 4, 3, [AvgContent]);
SetExperimentTableRow(1, 4, 4, [AvgContent(cs)]);
SetExperimentTableRow(1, 4, 5, [AvgStay]);
SetExperimentTableRow(1, 4, 6, [AvgStay(cs)]);
SetExperimentTableRow(1, 5, 1, [Side Accumulating Conveyor 2]);
SetExperimentTableRow(1, 5, 2, [1]);
SetExperimentTableRow(1, 5, 3, [AvgContent]);
SetExperimentTableRow(1, 5, 4, [AvgContent(cs)]);
SetExperimentTableRow(1, 5, 5, [AvgStay]);
SetExperimentTableRow(1, 5, 6, [AvgStay(cs)]);
SetExperimentTableRow(1, 6, 1, [Side Accumulating Conveyor 3]);
SetExperimentTableRow(1, 6, 2, [1]);
SetExperimentTableRow(1, 6, 3, [AvgContent]);
SetExperimentTableRow(1, 6, 4, [AvgContent(cs)]);
SetExperimentTableRow(1, 6, 5, [AvgStay]);
SetExperimentTableRow(1, 6, 6, [AvgStay(cs)]);
SetExperimentTableRow(1, 7, 1, [Side Accumulating Conveyor 4]);
SetExperimentTableRow(1, 7, 2, [1]);
SetExperimentTableRow(1, 7, 3, [AvgContent]);
SetExperimentTableRow(1, 7, 4, [AvgContent(cs)]);
SetExperimentTableRow(1, 7, 5, [AvgStay]);
SetExperimentTableRow(1, 7, 6, [AvgStay(cs)]);
SetExperimentTableRow(1, 8, 1, [Warehouse]);
SetExperimentTableRow(1, 8, 2, [1]);
SetExperimentTableRow(1, 8, 3, [Output]);
SetExperimentTableRow(1, 8, 4, [Input(cs)]);
SetExperimentTableRow(1, 8, 5, [0]);
SetExperimentTableRow(1, 8, 6, [0]);
CreateExperimentTable(2, 2, 10);
SetExperimentTableRow(2, 1, 1, [Main conveyor]);
SetExperimentTableRow(2, 1, 2, [Accumulating Conveyor 1]);
SetExperimentTableRow(2, 1, 3, [Accumulating Conveyor 2]);
SetExperimentTableRow(2, 1, 4, [Accumulating Conveyor 3]);
SetExperimentTableRow(2, 1, 5, [Accumulating Conveyor 4]);
SetExperimentTableRow(2, 1, 6, [Advanced Accumulating Conveyor Straight 1]);
SetExperimentTableRow(2, 1, 7, [Advanced Accumulating Conveyor Straight 2]);
SetExperimentTableRow(2, 1, 8, [Advanced Accumulating Conveyor Straight 3]);
SetExperimentTableRow(2, 1, 9, [Advanced Accumulating Conveyor Straight 4]);
SetExperimentTableRow(2, 1, 10, [Advanced Accumulating Conveyor Straight 5]);
SetExperimentTableRow(2, 2, 1, [Machines]);
SetExperimentTableRow(2, 2, 2, [Machine 1]);
SetExperimentTableRow(2, 2, 3, [Machine 2]);
SetExperimentTableRow(2, 2, 4, [Machine 3]);
SetExperimentTableRow(2, 2, 5, [Machine 4]);
SetExperimentTableRow(2, 2, 6, [Machine 5]);
SetExperimentTableRow(2, 2, 7, [0]);
SetExperimentTableRow(2, 2, 8, [0]);
SetExperimentTableRow(2, 2, 9, [0]);
SetExperimentTableRow(2, 2, 10, [0]);
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
SetAtt(13, 6);
SetTextAtt(14, [C:\Users\jvand\Documents\Enterprise Dynamics\10.6\]);
SetAtt(16, 100000);
SetAtt(17, 1);

{Saved Model3D settings.}

ExecOnCreationOnLoad;
