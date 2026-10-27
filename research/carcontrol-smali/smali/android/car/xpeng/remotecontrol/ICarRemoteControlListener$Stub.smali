.class public abstract Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;
.super Landroid/os/Binder;
.source "ICarRemoteControlListener.java"

# interfaces
.implements Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

.field static final TRANSACTION_onRemoteCameraEventChange:I = 0x1

.field static final TRANSACTION_onRemoteControlMirrorSwitch:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

    .line 32
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;
    .locals 1

    .line 144
    sget-object v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)Z
    .locals 1

    .line 137
    sget-object v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 138
    sput-object p0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

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

    const-string v1, "android.car.xpeng.remotecontrol.ICarRemoteControlListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 73
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->onRemoteControlMirrorSwitch(I)V

    return v0

    .line 65
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->onRemoteCameraEventChange(Ljava/lang/String;)V

    return v0
.end method
