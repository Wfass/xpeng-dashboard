.class Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDownloadListenerInterface.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 258
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 259
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v5, p2

    .line 260
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 261
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 262
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    move-wide/from16 v9, p6

    .line 263
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    move-object/from16 v11, p8

    .line 264
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 265
    :try_start_1
    iget-object v7, v12, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 268
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v3

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->basicTypes(IJZFDLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 272
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 275
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    return-object v0
.end method

.method public onDownloadCancel(JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 439
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 441
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 445
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadCancel(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 449
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 454
    throw p1
.end method

.method public onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 482
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 484
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 486
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 490
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 491
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadCompleted(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 495
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw p1
.end method

.method public onDownloadError(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 461
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 463
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 468
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadError(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 472
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    throw p1
.end method

.method public onDownloadInProgress(JLjava/lang/String;JFJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 392
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v4, p1

    .line 393
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p3

    .line 394
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-wide/from16 v7, p4

    .line 395
    invoke-virtual {v1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v9, p6

    .line 396
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeFloat(F)V

    move-wide/from16 v10, p7

    .line 397
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 398
    :try_start_1
    iget-object v3, v12, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x7

    const/4 v13, 0x0

    invoke-interface {v3, v6, v1, v2, v13}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 401
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v3

    move-wide v4, p1

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadInProgress(JLjava/lang/String;JFJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 405
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 408
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    throw v0
.end method

.method public onDownloadPause(JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadPause(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 427
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw p1
.end method

.method public onDownloadStart(JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 370
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onDownloadStart(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 380
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    throw p1
.end method

.method public onRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 306
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 311
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 315
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 318
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw p1
.end method

.method public onRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 284
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 285
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 286
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 289
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 293
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    throw p1
.end method

.method public onUnRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 349
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 350
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onUnRegisterError(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 358
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    throw p1
.end method

.method public onUnRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
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
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadListenerInterface"

    .line 327
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 329
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->onUnRegisterSuccess(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 336
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw p1
.end method
