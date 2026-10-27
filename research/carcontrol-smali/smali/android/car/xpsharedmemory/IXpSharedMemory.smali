.class public interface abstract Landroid/car/xpsharedmemory/IXpSharedMemory;
.super Ljava/lang/Object;
.source "IXpSharedMemory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;,
        Landroid/car/xpsharedmemory/IXpSharedMemory$Default;
    }
.end annotation


# virtual methods
.method public abstract getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
