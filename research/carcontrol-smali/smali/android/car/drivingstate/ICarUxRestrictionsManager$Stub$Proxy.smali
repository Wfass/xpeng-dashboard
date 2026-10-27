.class Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarUxRestrictionsManager.java"

# interfaces
.implements Landroid/car/drivingstate/ICarUxRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/drivingstate/ICarUxRestrictionsManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getConfigs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

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
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 306
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getConfigs()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 311
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 312
    sget-object v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 239
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 245
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 247
    sget-object p1, Landroid/car/drivingstate/CarUxRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/drivingstate/CarUxRestrictions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 254
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.drivingstate.ICarUxRestrictionsManager"

    return-object v0
.end method

.method public getRestrictionMode()Ljava/lang/String;
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
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 350
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 353
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getRestrictionMode()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 355
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 356
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getStagedConfigs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 286
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getStagedConfigs()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 291
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 292
    sget-object v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 201
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 207
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 265
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 267
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 269
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 271
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 275
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setRestrictionMode(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 329
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 333
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->setRestrictionMode(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 335
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 339
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p1

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 219
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 221
    iget-object v2, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 226
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
