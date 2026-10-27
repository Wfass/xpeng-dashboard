.class public interface abstract Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
.super Ljava/lang/Object;
.source "ISharedMemoryDataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;,
        Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDataAvailable(JJILandroid/os/ParcelFileDescriptor;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
