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

    const-string v0, "com.xiaopeng.speech.coreapi.IAgent"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IAgent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.IAgent"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/IAgent;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/xiaopeng/speech/coreapi/IAgent;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/coreapi/IAgent$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.speech.coreapi.IAgent"

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 475
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 465
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getConfigDataSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 454
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setConfigDataSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 442
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;

    move-result-object p2

    .line 449
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setConfigDataWithCallback(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/ISpeechConfigCallback;)V

    return v1

    .line 428
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 435
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->newTriggerDialog(I[ILjava/lang/String;)I

    move-result p1

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 417
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendTextWithSoundArea(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 408
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 411
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->leaveTriggerWithID(I)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 401
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->leaveTrigger()V

    .line 403
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 388
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 395
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerDialog(I[ILjava/lang/String;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 371
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 382
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerIntentWithBinder(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 353
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 358
    sget-object p4, Lcom/xiaopeng/speech/common/bean/SliceData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/xiaopeng/speech/common/bean/SliceData;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 364
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 365
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->uploadContact(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 340
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 347
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->uploadContacts(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 329
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendInfoFlowCardState(Ljava/lang/String;I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 312
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 323
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendSceneData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 300
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getMessageBoxData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 289
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 294
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendApiRoute(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 278
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendInfoFlowStatData(ILjava/lang/String;)V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 267
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setConfigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 257
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 248
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setSkillData(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 238
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getSkillData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 230
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isWheelVoiceButtonEnable()Z

    move-result p1

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 219
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    .line 224
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setUseWheelVoiceButton(Landroid/os/IBinder;Z)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 209
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->getRecommendData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 198
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 189
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendThirdCMD(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 180
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendScript(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 172
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isDefaultEnableWelcome()Z

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 163
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 166
    :cond_2
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setDefaultWelcomeEnabled(Z)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 154
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    .line 157
    :cond_3
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setDefaultASRInterruptEnabled(Z)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 146
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isDefaultEnableASRInterrupt()Z

    move-result p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 138
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->isEnableASRInterrupt()Z

    move-result p1

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 129
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    .line 132
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->setASRInterruptEnabled(Z)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 118
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v0, v1

    .line 112
    :cond_5
    invoke-virtual {p0, p1, p4, v0}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->updateVocab(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 81
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->updateDeviceInfo(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 70
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->feedbackResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 59
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 50
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/coreapi/IAgent$Stub;->sendText(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 45
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

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
