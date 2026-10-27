.class public abstract Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;
.super Landroid/os/Binder;
.source "ICarRemoteControlSvc.java"

# interfaces
.implements Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.remotecontrol.ICarRemoteControlSvc"

.field static final TRANSACTION_registerRemoteControlListener:I = 0x2

.field static final TRANSACTION_setRemoteCameraControlCmd:I = 0x4

.field static final TRANSACTION_setRemoteControlMirrowFeedBack:I = 0x6

.field static final TRANSACTION_setRemoteControlMirrowOnOff:I = 0x5

.field static final TRANSACTION_unregisterRemoteControlListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.remotecontrol.ICarRemoteControlSvc"

    .line 38
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.remotecontrol.ICarRemoteControlSvc"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;
    .locals 1

    .line 248
    sget-object v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;)Z
    .locals 1

    .line 241
    sget-object v0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 242
    sput-object p0, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc;

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

    const-string v2, "android.car.xpeng.remotecontrol.ICarRemoteControlSvc"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 66
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 108
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->setRemoteControlMirrowFeedBack(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 98
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->setRemoteControlMirrowOnOff(I)I

    move-result p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 89
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->setRemoteCameraControlCmd(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 80
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->unregisterRemoteControlListener(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 71
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remotecontrol/ICarRemoteControlSvc$Stub;->registerRemoteControlListener(Landroid/car/xpeng/remotecontrol/ICarRemoteControlListener;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
