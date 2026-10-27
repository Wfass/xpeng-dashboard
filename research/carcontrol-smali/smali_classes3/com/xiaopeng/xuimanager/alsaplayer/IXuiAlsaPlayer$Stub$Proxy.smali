.class Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IXuiAlsaPlayer.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    return-object v0
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 380
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 381
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 382
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 385
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 389
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw p1
.end method

.method public resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 363
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 366
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw p1
.end method

.method public setCaptureParameter(Ljava/lang/String;IIIIII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 298
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 299
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 300
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 301
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 302
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 303
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 304
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 305
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 306
    :try_start_1
    iget-object v3, v11, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v12, 0x0

    invoke-interface {v3, v4, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->setCaptureParameter(Ljava/lang/String;IIIIII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 312
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 313
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 316
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw v0
.end method

.method public setPlaybackParameter(Ljava/lang/String;IIIIII)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 327
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    .line 328
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, p2

    .line 329
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    .line 330
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    .line 331
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 332
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    .line 333
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    .line 334
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 335
    :try_start_1
    iget-object v3, v11, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v12, 0x0

    invoke-interface {v3, v4, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 338
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->setPlaybackParameter(Ljava/lang/String;IIIIII)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 341
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 342
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 345
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    throw v0
.end method

.method public startPlay(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->startPlay(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 233
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 234
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw p1
.end method

.method public stopPlay(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 248
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->stopPlay(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 256
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    throw p1
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 401
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 402
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 403
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 406
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 410
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    throw p1
.end method

.method public writeData(Ljava/lang/String;[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.alsaplayer.IXuiAlsaPlayer"

    .line 271
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 274
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->writeData(Ljava/lang/String;[BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 282
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 284
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 289
    throw p1
.end method
