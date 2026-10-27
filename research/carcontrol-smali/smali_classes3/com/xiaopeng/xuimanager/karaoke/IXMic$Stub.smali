.class public abstract Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;
.super Landroid/os/Binder;
.source "IXMic.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/IXMic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/IXMic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_XMS_Create:I = 0x3

.field static final TRANSACTION_XMS_Distroy:I = 0x6

.field static final TRANSACTION_XMS_GetEcho:I = 0xf

.field static final TRANSACTION_XMS_GetHandShakeStatus:I = 0x9

.field static final TRANSACTION_XMS_GetMicPowerStatus:I = 0xb

.field static final TRANSACTION_XMS_GetMicStatus:I = 0xa

.field static final TRANSACTION_XMS_GetToken:I = 0x7

.field static final TRANSACTION_XMS_GetVolume:I = 0xd

.field static final TRANSACTION_XMS_MicCreate:I = 0x25

.field static final TRANSACTION_XMS_MicDestroy:I = 0x28

.field static final TRANSACTION_XMS_MicGetAvail:I = 0x26

.field static final TRANSACTION_XMS_MicGetMinBuf:I = 0x24

.field static final TRANSACTION_XMS_MicRead:I = 0x27

.field static final TRANSACTION_XMS_Pause:I = 0x16

.field static final TRANSACTION_XMS_PausePlay:I = 0x1b

.field static final TRANSACTION_XMS_Read:I = 0x22

.field static final TRANSACTION_XMS_RecCreate:I = 0x1f

.field static final TRANSACTION_XMS_RecDestroy:I = 0x23

.field static final TRANSACTION_XMS_RecGetAvail:I = 0x20

.field static final TRANSACTION_XMS_RecGetMinBuf:I = 0x1e

.field static final TRANSACTION_XMS_RecStart:I = 0x18

.field static final TRANSACTION_XMS_RecStop:I = 0x17

.field static final TRANSACTION_XMS_RegisterCallback:I = 0x4

.field static final TRANSACTION_XMS_Resume:I = 0x19

.field static final TRANSACTION_XMS_ResumePlay:I = 0x1a

.field static final TRANSACTION_XMS_SaveRec:I = 0x1c

.field static final TRANSACTION_XMS_SetEcho:I = 0xe

.field static final TRANSACTION_XMS_SetRecMode:I = 0x21

.field static final TRANSACTION_XMS_SetSignedToken:I = 0x8

.field static final TRANSACTION_XMS_SetVolume:I = 0xc

.field static final TRANSACTION_XMS_StopSaveRec:I = 0x1d

.field static final TRANSACTION_XMS_TrackCreate:I = 0x11

.field static final TRANSACTION_XMS_TrackDestroy:I = 0x15

.field static final TRANSACTION_XMS_TrackGetAvail:I = 0x14

.field static final TRANSACTION_XMS_TrackGetLatency:I = 0x12

.field static final TRANSACTION_XMS_TrackGetMinBuf:I = 0x10

.field static final TRANSACTION_XMS_UnRegisterCallback:I = 0x5

.field static final TRANSACTION_XMS_Write:I = 0x13

.field static final TRANSACTION_XMS_clientDied:I = 0x2b

.field static final TRANSACTION_XMS_connectMicFlow:I = 0x2a

.field static final TRANSACTION_XMS_getMicName:I = 0x29


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 185
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IXMic;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.karaoke.IXMic"

    .line 196
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    if-eqz v1, :cond_1

    .line 198
    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    return-object v0

    .line 200
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IXMic;
    .locals 1

    .line 1748
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/karaoke/IXMic;)Z
    .locals 1

    .line 1738
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1742
    sput-object p0, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IXMic;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1739
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

    const-string v1, "com.xiaopeng.xuimanager.karaoke.IXMic"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 697
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 689
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_clientDied()I

    move-result p1

    .line 691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 682
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_connectMicFlow()V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 674
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_getMicName()Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 664
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_MicDestroy(Ljava/lang/String;)I

    move-result p1

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 649
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 656
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_MicRead(Ljava/lang/String;[BI)I

    move-result p1

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 639
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_MicGetAvail(Ljava/lang/String;)I

    move-result p1

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 623
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 632
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_MicCreate(Ljava/lang/String;III)I

    move-result p1

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 609
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 616
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result p1

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 599
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RecDestroy(Ljava/lang/String;)I

    move-result p1

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 584
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 591
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_Read(Ljava/lang/String;[BI)I

    move-result p1

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 572
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_SetRecMode(Ljava/lang/String;I)I

    move-result p1

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 562
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RecGetAvail(Ljava/lang/String;)I

    move-result p1

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 546
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 555
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RecCreate(Ljava/lang/String;III)I

    move-result p1

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 532
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 539
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RecGetMinBuf(Ljava/lang/String;II)I

    move-result p1

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 522
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_StopSaveRec(Ljava/lang/String;)I

    move-result p1

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 506
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 515
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_SaveRec(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 496
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_PausePlay(Ljava/lang/String;)I

    move-result p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 486
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_ResumePlay(Ljava/lang/String;)I

    move-result p1

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 476
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 479
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_Resume(Ljava/lang/String;)I

    move-result p1

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 466
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RecStart(Ljava/lang/String;)I

    move-result p1

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 456
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RecStop(Ljava/lang/String;)I

    move-result p1

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 446
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_Pause(Ljava/lang/String;)I

    move-result p1

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 436
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_TrackDestroy(Ljava/lang/String;)I

    move-result p1

    .line 440
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 426
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_TrackGetAvail(Ljava/lang/String;)I

    move-result p1

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 409
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 418
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_Write(Ljava/lang/String;[BII)I

    move-result p1

    .line 419
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {p3, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 399
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_TrackGetLatency(Ljava/lang/String;)I

    move-result p1

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 383
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 392
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_TrackCreate(Ljava/lang/String;III)I

    move-result p1

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 369
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 376
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_TrackGetMinBuf(Ljava/lang/String;II)I

    move-result p1

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 359
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 362
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_GetEcho(Ljava/lang/String;)I

    move-result p1

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 347
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_SetEcho(Ljava/lang/String;I)I

    move-result p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 335
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_GetVolume(Ljava/lang/String;I)I

    move-result p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 321
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 328
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_SetVolume(Ljava/lang/String;II)I

    move-result p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 311
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_GetMicPowerStatus(Ljava/lang/String;)I

    move-result p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 301
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_GetMicStatus(Ljava/lang/String;)I

    move-result p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 291
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_GetHandShakeStatus(Ljava/lang/String;)I

    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 279
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 269
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_GetToken(Ljava/lang/String;)I

    move-result p1

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 259
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_Distroy(Ljava/lang/String;)I

    move-result p1

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 248
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object p2

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 237
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object p2

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 221
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 230
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IXMic$Stub;->XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I

    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 213
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
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
