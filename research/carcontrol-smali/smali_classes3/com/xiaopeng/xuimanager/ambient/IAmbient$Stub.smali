.class public abstract Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;
.super Landroid/os/Binder;
.source "IAmbient.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambient/IAmbient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/IAmbient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAmbientLightBright:I = 0x11

.field static final TRANSACTION_getAmbientLightColorType:I = 0x14

.field static final TRANSACTION_getAmbientLightDoubleColor:I = 0x18

.field static final TRANSACTION_getAmbientLightEnable:I = 0x5

.field static final TRANSACTION_getAmbientLightMode:I = 0xe

.field static final TRANSACTION_getAmbientLightMonoColor:I = 0x16

.field static final TRANSACTION_getAmbientLightPartitionModes:I = 0xf

.field static final TRANSACTION_getAmbientLightPermission:I = 0x21

.field static final TRANSACTION_getAmbientLightRegionBright:I = 0x20

.field static final TRANSACTION_getAmbientLightRegionColor:I = 0x1e

.field static final TRANSACTION_getAmbientLightThemeColor:I = 0x1b

.field static final TRANSACTION_getFlowingAmbientLightBright:I = 0x27

.field static final TRANSACTION_getFlowingAmbientLightColor:I = 0x29

.field static final TRANSACTION_playAmbientLightEffect:I = 0x8

.field static final TRANSACTION_playFixedFlowingAmbientLightEffect:I = 0x23

.field static final TRANSACTION_playFlowingAmbientLightEffect:I = 0x24

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_requestAmbientLightPermission:I = 0x3

.field static final TRANSACTION_setAmbientLightBright:I = 0x10

.field static final TRANSACTION_setAmbientLightColorType:I = 0x13

.field static final TRANSACTION_setAmbientLightDoubleColor:I = 0x17

.field static final TRANSACTION_setAmbientLightEnable:I = 0x4

.field static final TRANSACTION_setAmbientLightMode:I = 0xc

.field static final TRANSACTION_setAmbientLightMonoColor:I = 0x15

.field static final TRANSACTION_setAmbientLightRegionBright:I = 0x1f

.field static final TRANSACTION_setAmbientLightRegionColor:I = 0x1d

.field static final TRANSACTION_setAmbientLightThemeColor:I = 0x1a

.field static final TRANSACTION_setFlowingAmbientLightBright:I = 0x26

.field static final TRANSACTION_setFlowingAmbientLightColor:I = 0x28

.field static final TRANSACTION_showAmbientLightColorTypes:I = 0x12

.field static final TRANSACTION_showAmbientLightEffectPartitions:I = 0x6

.field static final TRANSACTION_showAmbientLightEffects:I = 0x7

.field static final TRANSACTION_showAmbientLightModePartitions:I = 0xa

.field static final TRANSACTION_showAmbientLightModes:I = 0xb

.field static final TRANSACTION_showAmbientLightRegions:I = 0x1c

.field static final TRANSACTION_showAmbientLightThemesColor:I = 0x19

.field static final TRANSACTION_showFlowingAmbientLightEffects:I = 0x22

.field static final TRANSACTION_stopAmbientLightEffect:I = 0x9

.field static final TRANSACTION_stopFlowingAmbientLightEffect:I = 0x25

.field static final TRANSACTION_subAmbientLightMode:I = 0xd

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 186
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambient/IAmbient;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.ambient.IAmbient"

    .line 197
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    if-eqz v1, :cond_1

    .line 199
    check-cast v0, Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    return-object v0

    .line 201
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/ambient/IAmbient;
    .locals 1

    .line 1663
    sget-object v0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/ambient/IAmbient;)Z
    .locals 1

    .line 1653
    sget-object v0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1657
    sput-object p0, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/ambient/IAmbient;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1654
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.ambient.IAmbient"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 642
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 634
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getFlowingAmbientLightColor()I

    move-result p1

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 624
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 627
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setFlowingAmbientLightColor(I)I

    move-result p1

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 616
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getFlowingAmbientLightBright()I

    move-result p1

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 606
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 609
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setFlowingAmbientLightBright(I)I

    move-result p1

    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 598
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->stopFlowingAmbientLightEffect()I

    move-result p1

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 584
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v2, v0

    .line 591
    :cond_0
    invoke-virtual {p0, p1, p4, v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->playFlowingAmbientLightEffect(Ljava/lang/String;IZ)I

    move-result p1

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 568
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 577
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->playFixedFlowingAmbientLightEffect(Ljava/lang/String;III)I

    move-result p1

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 560
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showFlowingAmbientLightEffects()Ljava/util/List;

    move-result-object p1

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 552
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightPermission()Z

    move-result p1

    .line 554
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 540
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 545
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 526
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 533
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightRegionBright(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 514
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 500
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 507
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightRegionColor(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 492
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightRegions()Ljava/util/List;

    move-result-object p1

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 482
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightThemeColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 470
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightThemeColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 462
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightThemesColor()Ljava/util/List;

    move-result-object p1

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 452
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightDoubleColor(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 438
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 445
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightDoubleColor(Ljava/lang/String;II)I

    move-result p1

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 428
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 416
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightMonoColor(Ljava/lang/String;I)I

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 406
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightColorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 394
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 399
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightColorType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 386
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightColorTypes()Ljava/util/List;

    move-result-object p1

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 376
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightBright(Ljava/lang/String;)I

    move-result p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 364
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightBright(Ljava/lang/String;I)I

    move-result p1

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 356
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightPartitionModes()Ljava/lang/String;

    move-result-object p1

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 346
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 334
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->subAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 322
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 314
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightModes()Ljava/util/List;

    move-result-object p1

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 306
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightModePartitions()Ljava/util/List;

    move-result-object p1

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 298
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->stopAmbientLightEffect()I

    move-result p1

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 284
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v2, v0

    .line 291
    :cond_1
    invoke-virtual {p0, p1, p4, v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->playAmbientLightEffect(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 276
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightEffects()Ljava/util/List;

    move-result-object p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 268
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->showAmbientLightEffectPartitions()Ljava/util/List;

    move-result-object p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 260
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->getAmbientLightEnable()Z

    move-result p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 250
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    .line 253
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->setAmbientLightEnable(Z)I

    move-result p1

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 240
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 243
    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->requestAmbientLightPermission(Z)I

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 231
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;

    move-result-object p1

    .line 234
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 222
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;

    move-result-object p1

    .line 225
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambient/IAmbient$Stub;->registerListener(Lcom/xiaopeng/xuimanager/ambient/IAmbientEventListener;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 214
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
