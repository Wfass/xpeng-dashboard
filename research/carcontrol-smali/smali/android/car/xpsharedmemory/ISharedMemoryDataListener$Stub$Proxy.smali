.class Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISharedMemoryDataListener.java"

# interfaces
.implements Landroid/car/xpsharedmemory/ISharedMemoryDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.xpsharedmemory.ISharedMemoryDataListener"

    return-object v0
.end method

.method public onDataAvailable(JJILandroid/os/ParcelFileDescriptor;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p6

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    :try_start_0
    const-string v1, "android.car.xpsharedmemory.ISharedMemoryDataListener"

    .line 107
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-wide v2, p1

    .line 108
    invoke-virtual {v9, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    move-wide/from16 v4, p3

    .line 109
    invoke-virtual {v9, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v6, p5

    .line 110
    invoke-virtual {v9, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 112
    invoke-virtual {v9, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {v0, v9, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move/from16 v8, p7

    .line 118
    invoke-virtual {v9, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    .line 119
    :try_start_1
    iget-object v7, v11, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v12, 0x2

    invoke-interface {v7, v12, v9, v10, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    invoke-static {}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;->getDefaultImpl()Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    move-result-object v1

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->onDataAvailable(JJILandroid/os/ParcelFileDescriptor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 124
    :cond_1
    :try_start_2
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v11, p0

    .line 127
    :goto_1
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
