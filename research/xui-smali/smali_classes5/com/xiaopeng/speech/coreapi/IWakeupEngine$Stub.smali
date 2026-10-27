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

    .line 14
    const-string v0, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 25
    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 26
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    if-eqz v1, :cond_1

    .line 27
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    return-object v1

    .line 29
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 33
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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

    .line 37
    const-string v10, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    .line 38
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_9

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 715
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 700
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 704
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 706
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 709
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    return v11

    .line 683
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 687
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 689
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 691
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 693
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 694
    .local v16, "_arg4":I
    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    return v11

    .line 673
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 676
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getAllDialogSoundAreaStatus(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object v1

    .line 677
    .local v1, "_result":[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 679
    return v11

    .line 655
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 659
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 660
    .local v2, "_arg1":I
    invoke-virtual {v6, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getDialogSoundAreaStatus(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-result-object v3

    .line 661
    .local v3, "_result":Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v3, :cond_0

    .line 663
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {v3, v9, v11}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    :goto_0
    return v11

    .line 641
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getAvatarStatus()Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    move-result-object v1

    .line 643
    .local v1, "_result":Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {v1, v9, v11}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    :goto_1
    return v11

    .line 627
    .end local v1    # "_result":Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getDialogSwitchStatus()Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    move-result-object v1

    .line 629
    .local v1, "_result":Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    if-eqz v1, :cond_2

    .line 631
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {v1, v9, v11}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 635
    :cond_2
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    :goto_2
    return v11

    .line 616
    .end local v1    # "_result":Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 621
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->subscribeMultiTask(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    return v11

    .line 601
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 605
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 609
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v11

    nop

    .line 610
    .local v0, "_arg3":Z
    :cond_3
    invoke-virtual {v6, v1, v2, v3, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeSpeechWithTypeInfo(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    return v11

    .line 588
    .end local v0    # "_arg3":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 592
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    return v11

    .line 573
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 577
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 581
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    return v11

    .line 563
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getSoundAreaStatus(I)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    return v11

    .line 552
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 556
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    return v11

    .line 535
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 539
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 541
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 543
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 545
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v5, v11

    goto :goto_3

    :cond_4
    move v5, v0

    .line 546
    .local v5, "_arg4":Z
    :goto_3
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->suspendSpeechWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    return v11

    .line 524
    .end local v5    # "_arg4":Z
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->startDialogWithSoundArea(Ljava/lang/String;I)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    return v11

    .line 511
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 515
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 518
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    return v11

    .line 498
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 502
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 505
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->suspendDialogWithReason(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    return v11

    .line 485
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 489
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 491
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 492
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    return v11

    .line 470
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 474
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWheelWakeupWithInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    return v11

    .line 455
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 459
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 464
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    return v11

    .line 438
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 442
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 444
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 446
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 448
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 449
    .restart local v16    # "_arg4":I
    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    return v11

    .line 429
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->startDialogFrom(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    return v11

    .line 420
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableInterruptWake(Landroid/os/IBinder;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    return v11

    .line 411
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 414
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableInterruptWake(Landroid/os/IBinder;)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    return v11

    .line 402
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 405
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableFastWakeEnhance(Landroid/os/IBinder;)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    return v11

    .line 393
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 396
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableFastWakeEnhance(Landroid/os/IBinder;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    return v11

    .line 384
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 387
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableMainWakeupWord(Landroid/os/IBinder;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    return v11

    .line 375
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 378
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableMainWakeupWord(Landroid/os/IBinder;)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    return v11

    .line 366
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->stopDialogReason(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    return v11

    .line 359
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->stopDialogMessage()V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    return v11

    .line 352
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableFastWake()V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    return v11

    .line 345
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableFastWake()V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    return v11

    .line 336
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v11

    nop

    .line 339
    .local v0, "_arg0":Z
    :cond_5
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setDefaultFastWakeEnabled(Z)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    return v11

    .line 328
    .end local v0    # "_arg0":Z
    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isDefaultEnableFastWake()Z

    move-result v0

    .line 330
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    return v11

    .line 321
    .end local v0    # "_result":Z
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableOneshot()V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    return v11

    .line 314
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableOneshot()V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    return v11

    .line 305
    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v0, v11

    nop

    .line 308
    .local v0, "_arg0":Z
    :cond_6
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setDefaultOneshotEnabled(Z)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    return v11

    .line 297
    .end local v0    # "_arg0":Z
    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isDefaultEnableOneshot()Z

    move-result v0

    .line 299
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return v11

    .line 286
    .end local v0    # "_result":Z
    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 290
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v0, v11

    nop

    .line 291
    .local v0, "_arg1":Z
    :cond_7
    invoke-virtual {v6, v1, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    return v11

    .line 278
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isWheelWakeupEnabled()Z

    move-result v0

    .line 280
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    return v11

    .line 269
    .end local v0    # "_result":Z
    :pswitch_27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 272
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWakeupEnhance(Landroid/os/IBinder;)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    return v11

    .line 260
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 263
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWakeupEnhance(Landroid/os/IBinder;)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    return v11

    .line 251
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v0, v11

    nop

    .line 254
    .local v0, "_arg0":Z
    :cond_8
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->setDefaultWakeupEnabled(Z)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    return v11

    .line 243
    .end local v0    # "_arg0":Z
    :pswitch_2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isDefaultEnableWakeup()Z

    move-result v0

    .line 245
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    return v11

    .line 235
    .end local v0    # "_result":Z
    :pswitch_2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->isEnableWakeup()Z

    move-result v0

    .line 237
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    return v11

    .line 228
    .end local v0    # "_result":Z
    :pswitch_2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->resumeDialog()V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v11

    .line 221
    :pswitch_2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->pauseDialog()V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    return v11

    .line 212
    :pswitch_2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->removeShortcutWakeupWord([Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    return v11

    .line 199
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->addShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v11

    .line 192
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->clearShortCutWakeupWord()V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v11

    .line 179
    :pswitch_31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 185
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg2":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->updateShortcutWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    return v11

    .line 170
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 173
    .restart local v0    # "_arg0":[Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->removeCommandWakeupWord([Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v11

    .line 153
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 161
    .local v14, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 163
    .local v15, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 164
    .local v16, "_arg4":[Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->addCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    return v11

    .line 146
    .end local v12    # "_arg0":[Ljava/lang/String;
    .end local v13    # "_arg1":[Ljava/lang/String;
    .end local v14    # "_arg2":[Ljava/lang/String;
    .end local v15    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->clearCommandWakeupWord()V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    return v11

    .line 129
    :pswitch_35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 133
    .restart local v12    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 135
    .restart local v13    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 137
    .restart local v14    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 139
    .restart local v15    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 140
    .restart local v16    # "_arg4":[Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->updateCommandWakeupWord([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    return v11

    .line 121
    .end local v12    # "_arg0":[Ljava/lang/String;
    .end local v13    # "_arg1":[Ljava/lang/String;
    .end local v14    # "_arg2":[Ljava/lang/String;
    .end local v15    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":[Ljava/lang/String;
    :pswitch_36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getMinorWakeupWord()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v11

    .line 106
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->updateMinorWakeupWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v11

    .line 98
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[Ljava/lang/String;
    :pswitch_38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->getWakeupWords()[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 102
    return v11

    .line 91
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->disableWakeup()V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v11

    .line 84
    :pswitch_3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->enableWakeup()V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v11

    .line 77
    :pswitch_3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->avatarRelease()V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v11

    .line 70
    :pswitch_3c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->avatarPress()V

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v11

    .line 61
    :pswitch_3d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->avatarClick(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v11

    .line 54
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->stopDialog()V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v11

    .line 47
    :pswitch_3f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine$Stub;->startDialog()V

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    return v11

    .line 42
    :cond_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v11

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
