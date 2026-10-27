.class public abstract Landroid/speech/tts/ITextToSpeechService$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechService"

.field static final TRANSACTION_getClientDefaultLanguage:I = 0xa

.field static final TRANSACTION_getDefaultVoiceNameFor:I = 0x11

.field static final TRANSACTION_getFeaturesForLanguage:I = 0xc

.field static final TRANSACTION_getLanguage:I = 0x9

.field static final TRANSACTION_getVoices:I = 0xf

.field static final TRANSACTION_isLanguageAvailable:I = 0xb

.field static final TRANSACTION_isSpeaking:I = 0x5

.field static final TRANSACTION_isSpeakingByChannel:I = 0x6

.field static final TRANSACTION_loadLanguage:I = 0xd

.field static final TRANSACTION_loadVoice:I = 0x10

.field static final TRANSACTION_playAudio:I = 0x3

.field static final TRANSACTION_playSilence:I = 0x4

.field static final TRANSACTION_preTrigger:I = 0x13

.field static final TRANSACTION_setCallback:I = 0xe

.field static final TRANSACTION_setListenTtsStateChanged:I = 0x14

.field static final TRANSACTION_setSoloMode:I = 0x12

.field static final TRANSACTION_setTtsDataListener:I = 0x15

.field static final TRANSACTION_speak:I = 0x1

.field static final TRANSACTION_stop:I = 0x7

.field static final TRANSACTION_stopByChannel:I = 0x8

.field static final TRANSACTION_synthesizeToFileDescriptor:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.speech.tts.ITextToSpeechService"

    .line 261
    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.speech.tts.ITextToSpeechService"

    .line 272
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechService;

    if-eqz v1, :cond_1

    .line 274
    check-cast v0, Landroid/speech/tts/ITextToSpeechService;

    return-object v0

    .line 276
    :cond_1
    new-instance v0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/speech/tts/ITextToSpeechService;
    .locals 1

    .line 1348
    sget-object v0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->sDefaultImpl:Landroid/speech/tts/ITextToSpeechService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/speech/tts/ITextToSpeechService;)Z
    .locals 1

    .line 1338
    sget-object v0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->sDefaultImpl:Landroid/speech/tts/ITextToSpeechService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1342
    sput-object p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->sDefaultImpl:Landroid/speech/tts/ITextToSpeechService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1339
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.speech.tts.ITextToSpeechService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 592
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 583
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 586
    invoke-virtual {p0, p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->setTtsDataListener(Landroid/os/IBinder;)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 574
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 577
    invoke-virtual {p0, p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->setListenTtsStateChanged(Landroid/os/IBinder;)V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 563
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 568
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->preTrigger(Landroid/os/IBinder;I)V

    .line 569
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 549
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 556
    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->setSoloMode(Landroid/os/IBinder;IZ)I

    move-result p1

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 535
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 542
    invoke-virtual {p0, p1, p4, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 543
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 523
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 528
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p1

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 515
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getVoices()Ljava/util/List;

    move-result-object p1

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 504
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object p2

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 488
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 497
    invoke-virtual {p0, p1, p4, v1, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 474
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 481
    invoke-virtual {p0, p1, p4, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 460
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 467
    invoke-virtual {p0, p1, p4, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 452
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object p1

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 444
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 432
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 437
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->stopByChannel(Landroid/os/IBinder;[I)I

    move-result p1

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 420
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 425
    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/ITextToSpeechService$Stub;->stop(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p1

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 410
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 413
    invoke-virtual {p0, p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeakingByChannel(I)Z

    move-result p1

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 402
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeaking()Z

    move-result p1

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 386
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 395
    invoke-virtual/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService$Stub;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result p1

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 358
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 363
    sget-object p4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    move-object v3, p4

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 369
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 372
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Landroid/os/Bundle;

    :cond_2
    move-object v5, v2

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 379
    invoke-virtual/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService$Stub;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 325
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 330
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    move-object v3, p4

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 336
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 337
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    move-object v4, p4

    goto :goto_3

    :cond_4
    move-object v4, v2

    .line 343
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 344
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Landroid/os/Bundle;

    :cond_5
    move-object v5, v2

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 351
    invoke-virtual/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService$Stub;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 297
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 302
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    move-object v3, p4

    goto :goto_4

    :cond_6
    move-object v3, v2

    .line 308
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    .line 311
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Landroid/os/Bundle;

    :cond_7
    move-object v5, v2

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 318
    invoke-virtual/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService$Stub;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 289
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
