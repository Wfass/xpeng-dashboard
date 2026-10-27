.class public abstract Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;
.super Landroid/os/Binder;
.source "IXApp.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/xapp/IXApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/xapp/IXApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activeArome:I = 0xf

.field static final TRANSACTION_attachContext:I = 0xc

.field static final TRANSACTION_checkAppPolicy:I = 0x1d

.field static final TRANSACTION_checkAppStart:I = 0x16

.field static final TRANSACTION_checkIdentityValid:I = 0x1a

.field static final TRANSACTION_checkOrderValid:I = 0x1c

.field static final TRANSACTION_closeCancelableDialog:I = 0x19

.field static final TRANSACTION_exitApp:I = 0x11

.field static final TRANSACTION_forceGrantFolderPermission:I = 0x1f

.field static final TRANSACTION_getAppType:I = 0x17

.field static final TRANSACTION_getAppUsedLimitEnable:I = 0x4

.field static final TRANSACTION_getCarGearLevel:I = 0x5

.field static final TRANSACTION_getInstalledAppList:I = 0x18

.field static final TRANSACTION_initService:I = 0xd

.field static final TRANSACTION_isServiceOnline:I = 0xe

.field static final TRANSACTION_loginAccount:I = 0x10

.field static final TRANSACTION_logoutAccount:I = 0xb

.field static final TRANSACTION_notifyAppEvent:I = 0x20

.field static final TRANSACTION_onAppConfigUpload:I = 0x7

.field static final TRANSACTION_onAppModeChanged:I = 0x6

.field static final TRANSACTION_preloadApp:I = 0x12

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerMiniProgListener:I = 0x8

.field static final TRANSACTION_requestLoginInfo:I = 0x13

.field static final TRANSACTION_requestMiniList:I = 0x14

.field static final TRANSACTION_setAppUsedLimitEnable:I = 0x3

.field static final TRANSACTION_startApp:I = 0x21

.field static final TRANSACTION_startCustomService:I = 0x1b

.field static final TRANSACTION_startMiniProgram:I = 0xa

.field static final TRANSACTION_startXpApp:I = 0x1e

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_unregisterMiniProgListener:I = 0x9

.field static final TRANSACTION_uploadAlipayLog:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.xapp.IXApp"

    .line 133
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/xapp/IXApp;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.xapp.IXApp"

    .line 144
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/xapp/IXApp;

    if-eqz v1, :cond_1

    .line 146
    check-cast v0, Lcom/xiaopeng/xuimanager/xapp/IXApp;

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/xapp/IXApp;
    .locals 1

    .line 1334
    sget-object v0, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/xapp/IXApp;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/xapp/IXApp;)Z
    .locals 1

    .line 1324
    sget-object v0, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/xapp/IXApp;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1328
    sput-object p0, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/xapp/IXApp;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1325
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.xapp.IXApp"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 512
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 490
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 493
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 499
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 500
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 505
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->startApp(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p1

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 471
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 483
    :cond_2
    invoke-virtual {p0, p1, p4, v3}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->notifyAppEvent(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result p1

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 462
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->forceGrantFolderPermission(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 445
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 450
    sget-object p4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/Intent;

    .line 455
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->startXpApp(Ljava/lang/String;Landroid/content/Intent;)I

    move-result p1

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 428
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 433
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    .line 438
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 418
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->checkOrderValid(Ljava/lang/String;)Z

    move-result p1

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 407
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->startCustomService(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 398
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->checkIdentityValid(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 391
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->closeCancelableDialog()V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 381
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 384
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->getInstalledAppList(I)Ljava/util/List;

    move-result-object p1

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 371
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->getAppType(Ljava/lang/String;)I

    move-result p1

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 361
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->checkAppStart(Ljava/lang/String;)I

    move-result p1

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 354
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->uploadAlipayLog()V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 345
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->requestMiniList(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 338
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->requestLoginInfo()V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 327
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move v2, v0

    .line 332
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->preloadApp(Ljava/lang/String;Z)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 318
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->exitApp(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 311
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->loginAccount()V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 301
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 304
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->activeArome(Ljava/util/Map;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 293
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->isServiceOnline()Z

    move-result p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 286
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->initService()V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 279
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->attachContext()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 272
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->logoutAccount()V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 258
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 265
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 266
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 249
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    move-result-object p1

    .line 252
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->unregisterMiniProgListener(Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 240
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    move-result-object p1

    .line 243
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->registerMiniProgListener(Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 228
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 212
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 217
    sget-object p4, Lcom/xiaopeng/app/xpPackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaopeng/app/xpPackageInfo;

    .line 222
    :cond_6
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->onAppModeChanged(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 204
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->getCarGearLevel()I

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 196
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->getAppUsedLimitEnable()Z

    move-result p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 187
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v2, v0

    .line 190
    :cond_7
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->setAppUsedLimitEnable(Z)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 178
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 169
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->registerListener(Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 161
    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
