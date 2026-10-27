.class public abstract Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;
.super Landroid/os/Binder;
.source "IContextInfoEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onATLSStatus:I = 0x18

.field static final TRANSACTION_onAccelerationEvent:I = 0x1

.field static final TRANSACTION_onAngularVelocityEvent:I = 0x2

.field static final TRANSACTION_onAutoBrightness:I = 0x13

.field static final TRANSACTION_onAvpWifi:I = 0x15

.field static final TRANSACTION_onBcmLightMode:I = 0x1e

.field static final TRANSACTION_onBeltStatus:I = 0x19

.field static final TRANSACTION_onCameraEvent:I = 0x7

.field static final TRANSACTION_onCameraIntervalEvent:I = 0x8

.field static final TRANSACTION_onCarSpeed:I = 0x11

.field static final TRANSACTION_onChargingGunStatus:I = 0x1b

.field static final TRANSACTION_onCommonEvent:I = 0x24

.field static final TRANSACTION_onCrossEvent:I = 0xa

.field static final TRANSACTION_onDeviceChargeStatus:I = 0x1c

.field static final TRANSACTION_onDriverSeatStatus:I = 0x1d

.field static final TRANSACTION_onError:I = 0x25

.field static final TRANSACTION_onGearChanged:I = 0x10

.field static final TRANSACTION_onHomeCompanyRouteInfo:I = 0x27

.field static final TRANSACTION_onIGStatus:I = 0x12

.field static final TRANSACTION_onLLUStatus:I = 0x17

.field static final TRANSACTION_onLaneEvent:I = 0x6

.field static final TRANSACTION_onLocationEvent:I = 0xb

.field static final TRANSACTION_onManeuverEvent:I = 0x3

.field static final TRANSACTION_onMsgEvent:I = 0xe

.field static final TRANSACTION_onNaviEvent:I = 0x5

.field static final TRANSACTION_onNaviStatus:I = 0x26

.field static final TRANSACTION_onNavigationEnable:I = 0xd

.field static final TRANSACTION_onNavigationInfo:I = 0xc

.field static final TRANSACTION_onPoiEvent:I = 0x28

.field static final TRANSACTION_onPowerAction:I = 0x1a

.field static final TRANSACTION_onPowerOffCount:I = 0x21

.field static final TRANSACTION_onPsdMoto:I = 0x20

.field static final TRANSACTION_onRemainInfoEvent:I = 0x4

.field static final TRANSACTION_onRemoteCommand:I = 0x16

.field static final TRANSACTION_onSapaEvent:I = 0x9

.field static final TRANSACTION_onVpmEvent:I = 0x1f

.field static final TRANSACTION_onWeatherInfo:I = 0xf

.field static final TRANSACTION_onXPilotWarning:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 142
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    .line 153
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    if-eqz v1, :cond_1

    .line 155
    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    return-object v0

    .line 157
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;
    .locals 1

    .line 1419
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;)Z
    .locals 1

    .line 1409
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1413
    sput-object p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1410
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

    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfoEventListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_c

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 575
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 567
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onPoiEvent(Ljava/lang/String;)V

    return v0

    .line 552
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 555
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;

    .line 561
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 562
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    return v0

    .line 537
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 540
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;

    .line 546
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 547
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    return v0

    .line 527
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onError(II)V

    return v0

    .line 517
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 522
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onCommonEvent(II)V

    return v0

    .line 509
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 512
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onPowerOffCount(I)V

    return v0

    .line 501
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 504
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onPsdMoto(I)V

    return v0

    .line 491
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onVpmEvent(II)V

    return v0

    .line 481
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onBcmLightMode(II)V

    return v0

    .line 473
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 476
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onDriverSeatStatus(I)V

    return v0

    .line 465
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 468
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onDeviceChargeStatus(I)V

    return v0

    .line 457
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 460
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onChargingGunStatus(I)V

    return v0

    .line 449
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 452
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onPowerAction(I)V

    return v0

    .line 441
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 444
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onBeltStatus(I)V

    return v0

    .line 431
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onATLSStatus(II)V

    return v0

    .line 421
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onLLUStatus(II)V

    return v0

    .line 413
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 416
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onRemoteCommand(I)V

    return v0

    .line 405
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 408
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onAvpWifi(I)V

    return v0

    .line 395
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 400
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onXPilotWarning(II)V

    return v0

    .line 385
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onAutoBrightness(II)V

    return v0

    .line 377
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 380
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onIGStatus(I)V

    return v0

    .line 369
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 372
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onCarSpeed(F)V

    return v0

    .line 361
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 364
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onGearChanged(I)V

    return v0

    .line 353
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onWeatherInfo(Ljava/lang/String;)V

    return v0

    .line 345
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onMsgEvent(I)V

    return v0

    .line 337
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 340
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onNavigationEnable(Z)V

    return v0

    .line 329
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onNavigationInfo(Ljava/lang/String;)V

    return v0

    .line 314
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 317
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Location;

    .line 323
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 324
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    return v0

    .line 299
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 302
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Cross;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Cross;

    .line 308
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 309
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    return v0

    .line 284
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 287
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;

    .line 293
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    return v0

    .line 269
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 272
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    .line 278
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 279
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    return v0

    .line 254
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 257
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    .line 263
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 264
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    return v0

    .line 239
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 242
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Lane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Lane;

    .line 248
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 249
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    return v0

    .line 224
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 227
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Navi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Navi;

    .line 233
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 234
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    return v0

    .line 209
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 212
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;

    .line 218
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 219
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    return v0

    .line 194
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 197
    sget-object p1, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;

    .line 203
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 204
    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    return v0

    .line 186
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onAngularVelocityEvent(F)V

    return v0

    .line 178
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->onAccelerationEvent(F)V

    return v0

    .line 170
    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

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
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
