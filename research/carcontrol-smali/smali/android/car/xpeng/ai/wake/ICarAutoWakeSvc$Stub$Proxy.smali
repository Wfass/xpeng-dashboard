.class Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarAutoWakeSvc.java"

# interfaces
.implements Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteAllAutoWakeTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 240
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->deleteAllAutoWakeTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 246
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public deleteAutoWakeTaskId(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 258
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 260
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 262
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->deleteAutoWakeTaskId(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 265
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    return-object v0
.end method

.method public getRunningAutoWakeTaskId()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 316
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->getRunningAutoWakeTaskId()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 321
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public insertOrUpdateAutoWakeTask(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 277
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 279
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 281
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->insertOrUpdateAutoWakeTask(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 284
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyNoRunningScene()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 373
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 375
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->notifyNoRunningScene()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 379
    :cond_0
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
    move-exception v2

    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public overrideAutoWakeTask(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/xpeng/ai/wake/AutoWakeTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 296
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 298
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 300
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->overrideAutoWakeTask(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 303
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public registerAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 201
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 203
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 205
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->registerAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public startRootSceneByUser(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 335
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 339
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->startRootSceneByUser(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 342
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public stopRootSceneByUser(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 358
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->stopRootSceneByUser(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 361
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 364
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpeng.ai.wake.ICarAutoWakeSvc"

    .line 221
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 222
    invoke-interface {p1}, Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 223
    iget-object v2, p0, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 225
    invoke-static {}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc$Stub;->getDefaultImpl()Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/xpeng/ai/wake/ICarAutoWakeSvc;->unregisterAutoWakeListener(Landroid/car/xpeng/ai/scene/IAutoWakeSceneListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 228
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
