.class public Landroid/car/xpsharedmemory/IXpSharedMemory$Default;
.super Ljava/lang/Object;
.source "IXpSharedMemory.java"

# interfaces
.implements Landroid/car/xpsharedmemory/IXpSharedMemory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpsharedmemory/IXpSharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
