.class public abstract Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;
.super Landroid/os/Binder;
.source "IWakeupEngine.java"

# interfaces
.implements Lcom/xiaopeng/speech/coreapi/IWakeupEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.IWakeupEngine"

.field static final TRANSACTION_addCommandWakeupWord:I = 0xd

.field static final TRANSACTION_addShortcutWakeupWord:I = 0x11

.field static final TRANSACTION_avatarClick:I = 0x3

.field static final TRANSACTION_avatarPress:I = 0x4

.field static final TRANSACTION_avatarRelease:I = 0x5

.field static final TRANSACTION_clearCommandWakeupWord:I = 0xc

.field static final TRANSACTION_clearShortCutWakeupWord:I = 0x10

.field static final TRANSACTION_disableFastWake:I = 0x23

.field static final TRANSACTION_disableFastWakeEnhance:I = 0x29

.field static final TRANSACTION_disableInterruptWake:I = 0x2b

.field static final TRANSACTION_disableMainWakeupWord:I = 0x27

.field static final TRANSACTION_disableOneshot:I = 0x1f

.field static final TRANSACTION_disableSpeechWakeupWithInfo:I = 0x3f

.field static final TRANSACTION_disableSpeechWithInfo:I = 0x37

.field static final TRANSACTION_disableWakeup:I = 0x7

.field static final TRANSACTION_disableWakeupEnhance:I = 0x19

.field static final TRANSACTION_disableWakeupWithInfo:I = 0x2d

.field static final TRANSACTION_disableWheelWakeupWithInfo:I = 0x2f

.field static final TRANSACTION_enableFastWake:I = 0x22

.field static final TRANSACTION_enableFastWakeEnhance:I = 0x28

.field static final TRANSACTION_enableInterruptWake:I = 0x2a

.field static final TRANSACTION_enableMainWakeupWord:I = 0x26

.field static final TRANSACTION_enableOneshot:I = 0x1e

.field static final TRANSACTION_enableSpeechWakeupWithInfo:I = 0x40

.field static final TRANSACTION_enableSpeechWithInfo:I = 0x38

.field static final TRANSACTION_enableWakeup:I = 0x6

.field static final TRANSACTION_enableWakeupEnhance:I = 0x18

.field static final TRANSACTION_enableWakeupWithInfo:I = 0x2e

.field static final TRANSACTION_enableWheelWakeupWithInfo:I = 0x30

.field static final TRANSACTION_getAllDialogSoundAreaStatus:I = 0x3e

.field static final TRANSACTION_getAvatarStatus:I = 0x3c

.field static final TRANSACTION_getDialogSoundAreaStatus:I = 0x3d

.field static final TRANSACTION_getDialogSwitchStatus:I = 0x3b

.field static final TRANSACTION_getMinorWakeupWord:I = 0xa

.field static final TRANSACTION_getSoundAreaStatus:I = 0x36

.field static final TRANSACTION_getWakeupWords:I = 0x8

.field static final TRANSACTION_isDefaultEnableFastWake:I = 0x20

.field static final TRANSACTION_isDefaultEnableOneshot:I = 0x1c

.field static final TRANSACTION_isDefaultEnableWakeup:I = 0x16

.field static final TRANSACTION_isEnableWakeup:I = 0x15

.field static final TRANSACTION_isWheelWakeupEnabled:I = 0x1a

.field static final TRANSACTION_pauseDialog:I = 0x13

.field static final TRANSACTION_removeCommandWakeupWord:I = 0xe

.field static final TRANSACTION_removeShortcutWakeupWord:I = 0x12

.field static final TRANSACTION_resumeDialog:I = 0x14

.field static final TRANSACTION_resumeDialogWithReason:I = 0x32

.field static final TRANSACTION_resumeSpeechWithInfo:I = 0x35

.field static final TRANSACTION_resumeSpeechWithTypeInfo:I = 0x39

.field static final TRANSACTION_setDefaultFastWakeEnabled:I = 0x21

.field static final TRANSACTION_setDefaultOneshotEnabled:I = 0x1d

.field static final TRANSACTION_setDefaultWakeupEnabled:I = 0x17

.field static final TRANSACTION_setWheelWakeupEnabled:I = 0x1b

.field static final TRANSACTION_startDialog:I = 0x1

.field static final TRANSACTION_startDialogFrom:I = 0x2c

.field static final TRANSACTION_startDialogWithSoundArea:I = 0x33

.field static final TRANSACTION_stopDialog:I = 0x2

.field static final TRANSACTION_stopDialogMessage:I = 0x24

.field static final TRANSACTION_stopDialogReason:I = 0x25

.field static final TRANSACTION_subscribeMultiTask:I = 0x3a

.field static final TRANSACTION_suspendDialogWithReason:I = 0x31

.field static final TRANSACTION_suspendSpeechWithInfo:I = 0x34

.field static final TRANSACTION_updateCommandWakeupWord:I = 0xb

.field static final TRANSACTION_updateMinorWakeupWord:I = 0x9

.field static final TRANSACTION_updateShortcutWakeupWord:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x5f4e5446

    const/4 v6, 0x1

    const-string v3, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    if-eq p1, v2, :cond_9

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 715
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 700
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 706
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 683
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 689
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    .line 694
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 673
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getAllDialogSoundAreaStatus(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object v0

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v0, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v6

    .line 655
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 660
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getDialogSoundAreaStatus(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object v0

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {v0, p3, v6}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v6

    .line 641
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getAvatarStatus()Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    move-result-object v0

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {v0, p3, v6}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v6

    .line 627
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getDialogSwitchStatus()Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object v0

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {v0, p3, v6}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 635
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v6

    .line 616
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 621
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 601
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 609
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v2, v6

    .line 610
    :cond_3
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 588
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 573
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 581
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 582
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 563
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getSoundAreaStatus(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    .line 552
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 535
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v7

    move v5, v8

    .line 546
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 524
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->startDialogWithSoundArea(Ljava/lang/String;I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 511
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 498
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 485
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 492
    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 470
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 455
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 438
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    .line 449
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 429
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->startDialogFrom(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 420
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 423
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableInterruptWake(Landroid/os/IBinder;)V

    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 411
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 414
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableInterruptWake(Landroid/os/IBinder;)V

    .line 415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 402
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableFastWakeEnhance(Landroid/os/IBinder;)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 393
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 396
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableFastWakeEnhance(Landroid/os/IBinder;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 384
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 387
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableMainWakeupWord(Landroid/os/IBinder;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 375
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableMainWakeupWord(Landroid/os/IBinder;)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 366
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->stopDialogReason(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 359
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->stopDialogMessage()V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 352
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableFastWake()V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 345
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableFastWake()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 336
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v2, v6

    .line 339
    :cond_5
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setDefaultFastWakeEnabled(Z)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 328
    :pswitch_20
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isDefaultEnableFastWake()Z

    move-result v0

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .line 321
    :pswitch_21
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableOneshot()V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 314
    :pswitch_22
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableOneshot()V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 305
    :pswitch_23
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v2, v6

    .line 308
    :cond_6
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setDefaultOneshotEnabled(Z)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 297
    :pswitch_24
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isDefaultEnableOneshot()Z

    move-result v0

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .line 286
    :pswitch_25
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    move v2, v6

    .line 291
    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 278
    :pswitch_26
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isWheelWakeupEnabled()Z

    move-result v0

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .line 269
    :pswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWakeupEnhance(Landroid/os/IBinder;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 260
    :pswitch_28
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWakeupEnhance(Landroid/os/IBinder;)V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 251
    :pswitch_29
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v2, v6

    .line 254
    :cond_8
    invoke-virtual {p0, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setDefaultWakeupEnabled(Z)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 243
    :pswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isDefaultEnableWakeup()Z

    move-result v0

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .line 235
    :pswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isEnableWakeup()Z

    move-result v0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .line 228
    :pswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeDialog()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 221
    :pswitch_2d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->pauseDialog()V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 212
    :pswitch_2e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->removeShortcutWakeupWord([Ljava/lang/String;)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 199
    :pswitch_2f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->addShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 192
    :pswitch_30
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->clearShortCutWakeupWord()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 179
    :pswitch_31
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->updateShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 170
    :pswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->removeCommandWakeupWord([Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 153
    :pswitch_33
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->addCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 146
    :pswitch_34
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->clearCommandWakeupWord()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 129
    :pswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->updateCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 121
    :pswitch_36
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getMinorWakeupWord()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    .line 106
    :pswitch_37
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->updateMinorWakeupWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 98
    :pswitch_38
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getWakeupWords()[Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v6

    .line 91
    :pswitch_39
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWakeup()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 84
    :pswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWakeup()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 77
    :pswitch_3b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->avatarRelease()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 70
    :pswitch_3c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->avatarPress()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 61
    :pswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->avatarClick(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 54
    :pswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->stopDialog()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 47
    :pswitch_3f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->startDialog()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    .line 42
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
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
