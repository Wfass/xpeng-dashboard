.class public abstract Landroid/car/media/ICarVolumeCallback$Stub;
.super Landroid/os/Binder;
.source "ICarVolumeCallback.java"

# interfaces
.implements Landroid/car/media/ICarVolumeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarVolumeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarVolumeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.media.ICarVolumeCallback"

.field static final TRANSACTION_onGroupVolumeChanged:I = 0x1

.field static final TRANSACTION_onMasterMuteChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.media.ICarVolumeCallback"

    .line 43
    invoke-virtual {p0, p0, v0}, Landroid/car/media/ICarVolumeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarVolumeCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.media.ICarVolumeCallback"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Landroid/car/media/ICarVolumeCallback;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Landroid/car/media/ICarVolumeCallback;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Landroid/car/media/ICarVolumeCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/media/ICarVolumeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/media/ICarVolumeCallback;
    .locals 1

    .line 174
    sget-object v0, Landroid/car/media/ICarVolumeCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarVolumeCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/media/ICarVolumeCallback;)Z
    .locals 1

    .line 167
    sget-object v0, Landroid/car/media/ICarVolumeCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarVolumeCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 168
    sput-object p0, Landroid/car/media/ICarVolumeCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/media/ICarVolumeCallback;

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

    const/4 v0, 0x1

    const-string v1, "android.car.media.ICarVolumeCallback"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 71
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 88
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/car/media/ICarVolumeCallback$Stub;->onMasterMuteChanged(II)V

    return v0

    .line 76
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 83
    invoke-virtual {p0, p1, p3, p2}, Landroid/car/media/ICarVolumeCallback$Stub;->onGroupVolumeChanged(III)V

    return v0
.end method
