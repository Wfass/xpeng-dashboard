.class Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOperation.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/operation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/operation/IOperation;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 302
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 310
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/operation/IOperation;->addNewResource(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 313
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkResourceExist(ILjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 351
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->checkResourceExist(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 360
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 364
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    throw p1
.end method

.method public deleteResource(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->deleteResource(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 385
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    throw p1
.end method

.method public downloadResource(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    .line 498
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    invoke-virtual {p3, v0, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 507
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->downloadResource(ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 511
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    throw p1
.end method

.method public getDownLoadResourceList(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 400
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 405
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getDownLoadResourceList(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 408
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    throw p1
.end method

.method public getInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 470
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getInfo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 480
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.operation.IOperation"

    return-object v0
.end method

.method public getLocalResourceList(I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getLocalResourceList(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 336
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    throw p1
.end method

.method public getResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 423
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 429
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/operation/IOperation;->getResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 432
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 436
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw p1
.end method

.method public operateResource(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 446
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/operation/IOperation;->operateResource(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 457
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 261
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->registerListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 268
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw p1
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.operation.IOperation"

    .line 280
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 281
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 282
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 285
    invoke-static {}, Lcom/xiaopeng/xuimanager/operation/IOperation$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/operation/IOperation;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/operation/IOperation;->unregisterListener(Lcom/xiaopeng/xuimanager/operation/IOperationEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 289
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw p1
.end method
