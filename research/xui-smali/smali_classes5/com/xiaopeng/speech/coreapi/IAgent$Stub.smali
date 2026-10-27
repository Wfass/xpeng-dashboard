.class public abstract Lcom/xiaopeng/speech/coreapi/IAgent$Stub;
.super Landroid/os/Binder;
.source "IAgent.java"

# interfaces
.implements Lcom/xiaopeng/speech/coreapi/IAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/coreapi/IAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/IAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.IAgent"

.field static final TRANSACTION_feedbackResult:I = 0x3

.field static final TRANSACTION_getConfigData:I = 0x16

.field static final TRANSACTION_getConfigDataSync:I = 0x27

.field static final TRANSACTION_getMessageBoxData:I = 0x1a

.field static final TRANSACTION_getRecommendData:I = 0x11

.field static final TRANSACTION_getSkillData:I = 0x14

.field static final TRANSACTION_isDefaultEnableASRInterrupt:I = 0xa

.field static final TRANSACTION_isDefaultEnableWelcome:I = 0xd

.field static final TRANSACTION_isEnableASRInterrupt:I = 0x9

.field static final TRANSACTION_isWheelVoiceButtonEnable:I = 0x13

.field static final TRANSACTION_leaveTrigger:I = 0x21

.field static final TRANSACTION_leaveTriggerWithID:I = 0x22

.field static final TRANSACTION_newTriggerDialog:I = 0x24

.field static final TRANSACTION_sendApiRoute:I = 0x19

.field static final TRANSACTION_sendEvent:I = 0x2

.field static final TRANSACTION_sendInfoFlowCardState:I = 0x1c

.field static final TRANSACTION_sendInfoFlowStatData:I = 0x18

.field static final TRANSACTION_sendSceneData:I = 0x1b

.field static final TRANSACTION_sendScript:I = 0xe

.field static final TRANSACTION_sendText:I = 0x1

.field static final TRANSACTION_sendTextWithSoundArea:I = 0x23

.field static final TRANSACTION_sendThirdCMD:I = 0xf

.field static final TRANSACTION_sendUIEvent:I = 0x7

.field static final TRANSACTION_setASRInterruptEnabled:I = 0x8

.field static final TRANSACTION_setConfigData:I = 0x17

.field static final TRANSACTION_setConfigDataSync:I = 0x26

.field static final TRANSACTION_setConfigDataWithCallback:I = 0x25

.field static final TRANSACTION_setDefaultASRInterruptEnabled:I = 0xb

.field static final TRANSACTION_setDefaultWelcomeEnabled:I = 0xc

.field static final TRANSACTION_setSkillData:I = 0x15

.field static final TRANSACTION_setUseWheelVoiceButton:I = 0x12

.field static final TRANSACTION_triggerDialog:I = 0x20

.field static final TRANSACTION_triggerEvent:I = 0x10

.field static final TRANSACTION_triggerIntent:I = 0x5

.field static final TRANSACTION_triggerIntentWithBinder:I = 0x1f

.field static final TRANSACTION_updateDeviceInfo:I = 0x4

.field static final TRANSACTION_updateVocab:I = 0x6

.field static final TRANSACTION_uploadContact:I = 0x1e

.field static final TRANSACTION_uploadContacts:I = 0x1d


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.speech.coreapi.IAgent"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IAgent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.IAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/IAgent;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/coreapi/IAgent;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/coreapi/IAgent$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
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

    .line 40
    const-string v10, "com.xiaopeng.speech.coreapi.IAgent"

    .line 41
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_6

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    .line 475
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 465
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getConfigDataSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    return v11

    .line 454
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setConfigDataSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    return v11

    .line 442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;

    move-result-object v2

    .line 449
    .local v2, "_arg2":Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setConfigDataWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V

    .line 450
    return v11

    .line 428
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 434
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result v3

    .line 436
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    return v11

    .line 417
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendTextWithSoundArea(Ljava/lang/String;I)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v11

    .line 408
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 411
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->leaveTriggerWithID(I)V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    return v11

    .line 401
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->leaveTrigger()V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    return v11

    .line 388
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 392
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 394
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerDialog(I[ILjava/lang/String;)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    return v11

    .line 371
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 375
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 377
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 379
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 381
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 382
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerIntentWithBinder(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    return v11

    .line 353
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/xiaopeng/speech/common/bean/SliceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/common/bean/SliceData;

    .local v1, "_arg1":Lcom/xiaopeng/speech/common/bean/SliceData;
    goto :goto_0

    .line 361
    .end local v1    # "_arg1":Lcom/xiaopeng/speech/common/bean/SliceData;
    :cond_0
    const/4 v1, 0x0

    .line 364
    .restart local v1    # "_arg1":Lcom/xiaopeng/speech/common/bean/SliceData;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    return v11

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/xiaopeng/speech/common/bean/SliceData;
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .restart local v2    # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    return v11

    .line 329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 334
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendInfoFlowCardState(Ljava/lang/String;I)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    return v11

    .line 312
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 316
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 318
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 320
    .restart local v14    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 322
    .restart local v15    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 323
    .restart local v16    # "_arg4":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendSceneData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    return v11

    .line 300
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getMessageBoxData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    return v11

    .line 289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    return v11

    .line 278
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendInfoFlowStatData(ILjava/lang/String;)V

    .line 284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    return v11

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setConfigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    return v11

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    return v11

    .line 248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setSkillData(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    return v11

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getSkillData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return v11

    .line 230
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isWheelVoiceButtonEnable()Z

    move-result v0

    .line 232
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return v11

    .line 219
    .end local v0    # "_result":Z
    :pswitch_15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 223
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v11

    nop

    .line 224
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v6, v1, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setUseWheelVoiceButton(Landroid/os/IBinder;Z)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v11

    .line 209
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getRecommendData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    return v11

    .line 198
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v11

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendThirdCMD(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    return v11

    .line 180
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendScript(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v11

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isDefaultEnableWelcome()Z

    move-result v0

    .line 174
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return v11

    .line 163
    .end local v0    # "_result":Z
    :pswitch_1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v11

    nop

    .line 166
    .local v0, "_arg0":Z
    :cond_2
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setDefaultWelcomeEnabled(Z)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v11

    .line 154
    .end local v0    # "_arg0":Z
    :pswitch_1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v11

    nop

    .line 157
    .restart local v0    # "_arg0":Z
    :cond_3
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setDefaultASRInterruptEnabled(Z)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    return v11

    .line 146
    .end local v0    # "_arg0":Z
    :pswitch_1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isDefaultEnableASRInterrupt()Z

    move-result v0

    .line 148
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return v11

    .line 138
    .end local v0    # "_result":Z
    :pswitch_1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isEnableASRInterrupt()Z

    move-result v0

    .line 140
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return v11

    .line 129
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v11

    nop

    .line 132
    .local v0, "_arg0":Z
    :cond_4
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setASRInterruptEnabled(Z)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v11

    .line 118
    .end local v0    # "_arg0":Z
    :pswitch_20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v11

    .line 105
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v11

    nop

    .line 112
    .local v0, "_arg2":Z
    :cond_5
    invoke-virtual {v6, v1, v2, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v11

    .line 90
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    :pswitch_22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v11

    .line 81
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->updateDeviceInfo(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v11

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->feedbackResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v11

    .line 59
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v11

    .line 50
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendText(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v11

    .line 45
    .end local v0    # "_arg0":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
