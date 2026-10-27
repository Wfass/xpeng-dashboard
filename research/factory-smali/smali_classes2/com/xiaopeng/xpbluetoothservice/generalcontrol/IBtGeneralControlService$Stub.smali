.class public abstract Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;
.super Landroid/os/Binder;
.source "IBtGeneralControlService.java"

# interfaces
.implements Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

.field static final TRANSACTION_acceptConnect:I = 0x1a

.field static final TRANSACTION_acceptPair:I = 0x14

.field static final TRANSACTION_actionDisconnect:I = 0x2a

.field static final TRANSACTION_closeSpp:I = 0x22

.field static final TRANSACTION_connectA2DP:I = 0x1f

.field static final TRANSACTION_connectDevice:I = 0x1c

.field static final TRANSACTION_connectSpp:I = 0x23

.field static final TRANSACTION_disconnectA2DP:I = 0x1e

.field static final TRANSACTION_disconnectDevice:I = 0x1d

.field static final TRANSACTION_disconnectSpp:I = 0x24

.field static final TRANSACTION_getBtPowerStatus:I = 0x5

.field static final TRANSACTION_getConnectStatus:I = 0x17

.field static final TRANSACTION_getConnectedDeviceInfo:I = 0x19

.field static final TRANSACTION_getDeviceName:I = 0x7

.field static final TRANSACTION_getLocalAddress:I = 0x8

.field static final TRANSACTION_getPairedList:I = 0x16

.field static final TRANSACTION_getRemoteName:I = 0x9

.field static final TRANSACTION_getWillConnect:I = 0x29

.field static final TRANSACTION_hasConnected:I = 0x18

.field static final TRANSACTION_initSpp:I = 0x21

.field static final TRANSACTION_isCurrentConnecting:I = 0xd

.field static final TRANSACTION_isCurrentPairing:I = 0xa

.field static final TRANSACTION_isCurrentScanning:I = 0xc

.field static final TRANSACTION_isDisConnecting:I = 0x2b

.field static final TRANSACTION_isDownloading:I = 0xe

.field static final TRANSACTION_isFirstConnect:I = 0x2d

.field static final TRANSACTION_pairDevice:I = 0x12

.field static final TRANSACTION_powerOffBluetooth:I = 0x4

.field static final TRANSACTION_powerOnBluetooth:I = 0x3

.field static final TRANSACTION_readRSSI:I = 0x20

.field static final TRANSACTION_rebootBT:I = 0x2c

.field static final TRANSACTION_refuseConnect:I = 0x1b

.field static final TRANSACTION_refusePair:I = 0x15

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerSppDataCallback:I = 0x26

.field static final TRANSACTION_sendHCICommand:I = 0x2e

.field static final TRANSACTION_setDeviceName:I = 0x6

.field static final TRANSACTION_setDiscoveryMode:I = 0xb

.field static final TRANSACTION_setHCITestMode:I = 0x2f

.field static final TRANSACTION_setWillConnect:I = 0x28

.field static final TRANSACTION_startScanDevice:I = 0xf

.field static final TRANSACTION_startScanDeviceEx:I = 0x10

.field static final TRANSACTION_stopScanDevice:I = 0x11

.field static final TRANSACTION_unRegisterSppDataCallback:I = 0x27

.field static final TRANSACTION_unpairDevice:I = 0x13

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_writeSpp:I = 0x25


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 43
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_9

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 632
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 623
    :pswitch_0
    const-string v1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v10

    nop

    .line 626
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->setHCITestMode(Z)Z

    move-result v1

    .line 627
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    return v10

    .line 611
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_1
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 615
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 616
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->sendHCICommand([BI)Z

    move-result v2

    .line 617
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    return v10

    .line 601
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_2
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->isFirstConnect(Ljava/lang/String;)Z

    move-result v1

    .line 605
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    return v10

    .line 591
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->rebootBT(Ljava/lang/String;)Z

    move-result v1

    .line 595
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    return v10

    .line 581
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 584
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->isDisConnecting(Ljava/lang/String;)Z

    move-result v1

    .line 585
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    return v10

    .line 570
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->actionDisconnect(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    return v10

    .line 560
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_6
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getWillConnect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    return v10

    .line 549
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_7
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->setWillConnect(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    return v10

    .line 540
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->unRegisterSppDataCallback(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    return v10

    .line 531
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->registerSppDataCallback(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    return v10

    .line 514
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 522
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 523
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->writeSpp(Ljava/lang/String;I[BI)I

    move-result v4

    .line 524
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 527
    return v10

    .line 502
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_b
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 507
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->disconnectSpp(Ljava/lang/String;I)Z

    move-result v2

    .line 508
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    return v10

    .line 487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_c
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 494
    .local v2, "_arg2":[B
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->connectSpp(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v3

    .line 495
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 498
    return v10

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":I
    :pswitch_d
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 480
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->closeSpp(Ljava/lang/String;)Z

    move-result v1

    .line 481
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    return v10

    .line 464
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 469
    .local v1, "_arg1":[B
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->initSpp(Ljava/lang/String;[B)Z

    move-result v2

    .line 470
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 473
    return v10

    .line 452
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :pswitch_f
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->readRSSI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 458
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    return v10

    .line 440
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_10
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 445
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->connectA2DP(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 446
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    return v10

    .line 430
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_11
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->disconnectA2DP(Ljava/lang/String;)Z

    move-result v1

    .line 434
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    return v10

    .line 420
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_12
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->disconnectDevice(Ljava/lang/String;)Z

    move-result v1

    .line 424
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    return v10

    .line 408
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_13
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->connectDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 414
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    return v10

    .line 394
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_14
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 400
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->refuseConnect(Ljava/lang/String;II)Z

    move-result v3

    .line 402
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    return v10

    .line 380
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_15
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 384
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 386
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->acceptConnect(Ljava/lang/String;II)Z

    move-result v3

    .line 388
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    return v10

    .line 350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_16
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 357
    .local v2, "_arg2_length":I
    if-gez v2, :cond_1

    .line 358
    const/4 v3, 0x0

    .local v3, "_arg2":[Ljava/lang/String;
    goto :goto_0

    .line 361
    .end local v3    # "_arg2":[Ljava/lang/String;
    :cond_1
    new-array v3, v2, [Ljava/lang/String;

    .line 364
    .restart local v3    # "_arg2":[Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 365
    .local v4, "_arg3_length":I
    if-gez v4, :cond_2

    .line 366
    const/4 v5, 0x0

    .local v5, "_arg3":[Ljava/lang/String;
    goto :goto_1

    .line 369
    .end local v5    # "_arg3":[Ljava/lang/String;
    :cond_2
    new-array v5, v4, [Ljava/lang/String;

    .line 371
    .restart local v5    # "_arg3":[Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v0, v1, v3, v5}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getConnectedDeviceInfo(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    .line 372
    .local v11, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 375
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 376
    return v10

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2_length":I
    .end local v3    # "_arg2":[Ljava/lang/String;
    .end local v4    # "_arg3_length":I
    .end local v5    # "_arg3":[Ljava/lang/String;
    .end local v11    # "_result":Z
    :pswitch_17
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->hasConnected(Ljava/lang/String;)Z

    move-result v1

    .line 344
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v10

    .line 326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_18
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 333
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getConnectStatus(Ljava/lang/String;II)Z

    move-result v3

    .line 334
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return v10

    .line 280
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_19
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 285
    .local v12, "_arg1_length":I
    if-gez v12, :cond_3

    .line 286
    const/4 v0, 0x0

    .local v0, "_arg1":[I
    goto :goto_2

    .line 289
    .end local v0    # "_arg1":[I
    :cond_3
    new-array v0, v12, [I

    .restart local v0    # "_arg1":[I
    :goto_2
    move-object v13, v0

    .line 292
    .end local v0    # "_arg1":[I
    .local v13, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 293
    .local v14, "_arg2_length":I
    if-gez v14, :cond_4

    .line 294
    const/4 v0, 0x0

    .local v0, "_arg2":[Ljava/lang/String;
    goto :goto_3

    .line 297
    .end local v0    # "_arg2":[Ljava/lang/String;
    :cond_4
    new-array v0, v14, [Ljava/lang/String;

    .restart local v0    # "_arg2":[Ljava/lang/String;
    :goto_3
    move-object v15, v0

    .line 300
    .end local v0    # "_arg2":[Ljava/lang/String;
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 301
    .local v5, "_arg3_length":I
    if-gez v5, :cond_5

    .line 302
    const/4 v0, 0x0

    .local v0, "_arg3":[Ljava/lang/String;
    goto :goto_4

    .line 305
    .end local v0    # "_arg3":[Ljava/lang/String;
    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    .restart local v0    # "_arg3":[Ljava/lang/String;
    :goto_4
    move-object v4, v0

    .line 308
    .end local v0    # "_arg3":[Ljava/lang/String;
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "_arg4_length":I
    if-gez v3, :cond_6

    .line 310
    const/4 v0, 0x0

    .local v0, "_arg4":[I
    goto :goto_5

    .line 313
    .end local v0    # "_arg4":[I
    :cond_6
    new-array v0, v3, [I

    .restart local v0    # "_arg4":[I
    :goto_5
    move-object v2, v0

    .line 315
    .end local v0    # "_arg4":[I
    .local v2, "_arg4":[I
    move-object v0, v6

    move-object v1, v11

    move-object/from16 v16, v2

    move-object v2, v13

    .end local v2    # "_arg4":[I
    .local v16, "_arg4":[I
    move/from16 v17, v3

    move-object v3, v15

    .end local v3    # "_arg4_length":I
    .local v17, "_arg4_length":I
    move-object/from16 v18, v4

    .end local v4    # "_arg3":[Ljava/lang/String;
    .local v18, "_arg3":[Ljava/lang/String;
    move/from16 v19, v5

    move-object/from16 v5, v16

    .end local v5    # "_arg3_length":I
    .local v19, "_arg3_length":I
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getPairedList(Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result v0

    .line 316
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 319
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 320
    move-object/from16 v1, v18

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 321
    .end local v18    # "_arg3":[Ljava/lang/String;
    .local v1, "_arg3":[Ljava/lang/String;
    move-object/from16 v2, v16

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 322
    .end local v16    # "_arg4":[I
    .restart local v2    # "_arg4":[I
    return v10

    .line 266
    .end local v0    # "_result":Z
    .end local v1    # "_arg3":[Ljava/lang/String;
    .end local v2    # "_arg4":[I
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1_length":I
    .end local v13    # "_arg1":[I
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4_length":I
    .end local v19    # "_arg3_length":I
    :pswitch_1a
    const-string v1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v0, v10

    nop

    .line 273
    .local v0, "_arg2":Z
    :cond_7
    invoke-virtual {v6, v1, v2, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->refusePair(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 274
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v10

    .line 250
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1b
    const-string v1, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v10

    nop

    .line 259
    .local v0, "_arg3":Z
    :cond_8
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->acceptPair(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 260
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return v10

    .line 238
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1c
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->unpairDevice(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 244
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return v10

    .line 222
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1d
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->pairDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 232
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return v10

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_1e
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->stopScanDevice(Ljava/lang/String;)Z

    move-result v1

    .line 216
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    return v10

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1f
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->startScanDeviceEx(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v10

    .line 194
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_20
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->startScanDevice(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v10

    .line 184
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_21
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    .line 188
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v10

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_22
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->isCurrentConnecting(Ljava/lang/String;)Z

    move-result v1

    .line 178
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return v10

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_23
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->isCurrentScanning(Ljava/lang/String;)Z

    move-result v1

    .line 168
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    return v10

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_24
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->setDiscoveryMode(Ljava/lang/String;I)Z

    move-result v2

    .line 158
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v10

    .line 142
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_25
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->isCurrentPairing(Ljava/lang/String;)Z

    move-result v1

    .line 146
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v10

    .line 130
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_26
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getRemoteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v10

    .line 120
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_27
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getLocalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v10

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_28
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v10

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_29
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->setDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 104
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v10

    .line 88
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2a
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->getBtPowerStatus(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v10

    .line 79
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_2b
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->powerOffBluetooth(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v10

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2c
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->powerOnBluetooth(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v10

    .line 61
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->unregisterCallback(Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v10

    .line 52
    .end local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
    :pswitch_2e
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;

    move-result-object v0

    .line 55
    .restart local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService$Stub;->registerCallback(Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v10

    .line 47
    .end local v0    # "_arg0":Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IGeneralServiceCallback;
    :cond_9
    const-string v0, "com.xiaopeng.xpbluetoothservice.generalcontrol.IBtGeneralControlService"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
