.class public abstract Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;
.super Landroid/os/Binder;
.source "ISharedMemoryDataListener.java"

# interfaces
.implements Landroid/car/xpsharedmemory/ISharedMemoryDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpsharedmemory.ISharedMemoryDataListener"

.field static final TRANSACTION_onDataAvailable:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpsharedmemory.ISharedMemoryDataListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpsharedmemory.ISharedMemoryDataListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .locals 1

    .line 142
    sget-object v0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpsharedmemory/ISharedMemoryDataListener;)Z
    .locals 1

    .line 135
    sget-object v0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 136
    sput-object p0, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "android.car.xpsharedmemory.ISharedMemoryDataListener"

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 61
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 70
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object v2, p0

    .line 77
    invoke-virtual/range {v2 .. v9}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener$Stub;->onDataAvailable(JJILandroid/os/ParcelFileDescriptor;I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
