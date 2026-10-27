.class Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;
.super Ljava/lang/Object;
.source "IXpSharedMemory.java"

# interfaces
.implements Landroid/car/xpsharedmemory/IXpSharedMemory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpsharedmemory/IXpSharedMemory;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpsharedmemory.IXpSharedMemory"

    return-object v0
.end method

.method public getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpsharedmemory.IXpSharedMemory"

    .line 211
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/xpsharedmemory/IXpSharedMemory;->getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 216
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 217
    sget-object v2, Landroid/car/hardware/CarPropertyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/car/hardware/CarPropertyConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpsharedmemory.IXpSharedMemory"

    .line 143
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    .line 146
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p2, v0, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v3, p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/xpsharedmemory/IXpSharedMemory;->queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 158
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpsharedmemory.IXpSharedMemory"

    .line 170
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 172
    invoke-interface {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 173
    iget-object v2, p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 175
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpsharedmemory/IXpSharedMemory;->registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 178
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.xpsharedmemory.IXpSharedMemory"

    .line 190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 192
    invoke-interface {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 193
    iget-object v2, p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/car/xpsharedmemory/IXpSharedMemory;->unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 198
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
