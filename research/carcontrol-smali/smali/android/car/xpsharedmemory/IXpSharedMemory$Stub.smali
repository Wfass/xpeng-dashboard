.class public abstract Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;
.super Landroid/os/Binder;
.source "IXpSharedMemory.java"

# interfaces
.implements Landroid/car/xpsharedmemory/IXpSharedMemory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpsharedmemory/IXpSharedMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpsharedmemory.IXpSharedMemory"

.field static final TRANSACTION_getPropertyArray:I = 0x5

.field static final TRANSACTION_queueMemoryBuffer:I = 0x2

.field static final TRANSACTION_registerListener:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpsharedmemory.IXpSharedMemory"

    .line 38
    invoke-virtual {p0, p0, v0}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/IXpSharedMemory;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpsharedmemory.IXpSharedMemory"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Landroid/car/xpsharedmemory/IXpSharedMemory;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/car/xpsharedmemory/IXpSharedMemory;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpsharedmemory/IXpSharedMemory;
    .locals 1

    .line 239
    sget-object v0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->sDefaultImpl:Landroid/car/xpsharedmemory/IXpSharedMemory;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpsharedmemory/IXpSharedMemory;)Z
    .locals 1

    .line 232
    sget-object v0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->sDefaultImpl:Landroid/car/xpsharedmemory/IXpSharedMemory;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 233
    sput-object p0, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub$Proxy;->sDefaultImpl:Landroid/car/xpsharedmemory/IXpSharedMemory;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "android.car.xpsharedmemory.IXpSharedMemory"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 119
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 111
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->getPropertyArray()[Landroid/car/hardware/CarPropertyConfig;

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 100
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    move-result-object p2

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->unregisterListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    move-result-object p2

    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->registerListener(ILandroid/car/xpsharedmemory/ISharedMemoryDataListener;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    .line 76
    sget-object p4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_5
    const/4 p4, 0x0

    .line 82
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 83
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/xpsharedmemory/IXpSharedMemory$Stub;->queueMemoryBuffer(ILandroid/os/ParcelFileDescriptor;I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
