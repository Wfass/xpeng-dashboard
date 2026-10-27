.class Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDownloadServiceInterface.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 224
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 225
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v5, p2

    .line 226
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    .line 227
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    .line 228
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeFloat(F)V

    move-wide/from16 v9, p6

    .line 229
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V

    move-object/from16 v11, p8

    .line 230
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v12, p0

    .line 231
    :try_start_1
    iget-object v7, v12, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 234
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v3

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-interface/range {v3 .. v11}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->basicTypes(IJZFDLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 238
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 241
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v0
.end method

.method public enqueue(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 251
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->enqueue(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 259
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception p1

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw p1
.end method

.method public enqueueWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 300
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 305
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->enqueueWithHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 311
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw p1
.end method

.method public enqueueWtihTitleDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 274
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 279
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->enqueueWtihTitleDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    .line 285
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    return-object v0
.end method

.method public getState(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 326
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 328
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->getState(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 335
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw p1
.end method

.method public getStatusListByPackageName(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 392
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 398
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->getStatusListByPackageName(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 401
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw p1
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 349
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 350
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 351
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->registerListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
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

.method public unRegisterListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
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
    const-string v2, "com.xiaopeng.xuimanager.download.IDownloadServiceInterface"

    .line 370
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 371
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 372
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 374
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 375
    invoke-static {}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/xuimanager/download/IDownloadServiceInterface;->unRegisterListener(Lcom/xiaopeng/xuimanager/download/IDownloadListenerInterface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 379
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw p1
.end method
