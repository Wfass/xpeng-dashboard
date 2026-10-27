.class Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICondition.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/condition/ICondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/ICondition;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 362
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 364
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/condition/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 365
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 368
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ICondition;->addConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 372
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createCondition(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->createCondition(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 262
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 268
    throw p1
.end method

.method public getBrightnessLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 477
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 481
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/condition/ICondition;->getBrightnessLevel()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.condition.ICondition"

    return-object v0
.end method

.method public getTwilightState()Lcom/xiaopeng/xuimanager/condition/TwilightState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 408
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 412
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/condition/ICondition;->getTwilightState()Lcom/xiaopeng/xuimanager/condition/TwilightState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 415
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    sget-object v2, Lcom/xiaopeng/xuimanager/condition/TwilightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/condition/TwilightState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 424
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v2
.end method

.method public isConditionMatch(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->isConditionMatch(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 306
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 307
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 310
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    throw p1
.end method

.method public registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 498
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 499
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 500
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 502
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 503
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 507
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    throw p1
.end method

.method public registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 435
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 436
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 438
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 443
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw p1
.end method

.method public releaseCondition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 276
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->releaseCondition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 285
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw p1
.end method

.method public removeConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 384
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 386
    invoke-interface {p2}, Lcom/xiaopeng/xuimanager/condition/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 387
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 390
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ICondition;->removeConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 394
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw p1
.end method

.method public startWatchCondition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 320
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->startWatchCondition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 329
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw p1
.end method

.method public stopWatchCondition(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 341
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 346
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->stopWatchCondition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 350
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    throw p1
.end method

.method public unregisterBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 519
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 520
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 521
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 524
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->unregisterBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 528
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw p1
.end method

.method public unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 455
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 456
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 457
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 460
    invoke-static {}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition;->unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 464
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    throw p1
.end method
