.class public abstract Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;
.super Landroid/os/Binder;
.source "ICarCareModeSvc.java"

# interfaces
.implements Landroid/car/xpeng/mode/ICarCareModeSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mode/ICarCareModeSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/mode/ICarCareModeSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.mode.ICarCareModeSvc"

.field static final TRANSACTION_getCarCareModeEnable:I = 0x3

.field static final TRANSACTION_registerCareModeListener:I = 0x4

.field static final TRANSACTION_sendCareModeTick:I = 0x6

.field static final TRANSACTION_setCarCareModeEnable:I = 0x2

.field static final TRANSACTION_unregisterCareModeListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.mode.ICarCareModeSvc"

    .line 39
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarCareModeSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.mode.ICarCareModeSvc"

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Landroid/car/xpeng/mode/ICarCareModeSvc;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Landroid/car/xpeng/mode/ICarCareModeSvc;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/mode/ICarCareModeSvc;
    .locals 1

    .line 249
    sget-object v0, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/mode/ICarCareModeSvc;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/mode/ICarCareModeSvc;)Z
    .locals 1

    .line 242
    sget-object v0, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/mode/ICarCareModeSvc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 243
    sput-object p0, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/mode/ICarCareModeSvc;

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

    const-string v2, "android.car.xpeng.mode.ICarCareModeSvc"

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

    .line 67
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
    invoke-virtual {p0, p1}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->sendCareModeTick(I)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 99
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/mode/ICarCareModeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarCareModeListener;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->unregisterCareModeListener(Landroid/car/xpeng/mode/ICarCareModeListener;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/mode/ICarCareModeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/mode/ICarCareModeListener;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->registerCareModeListener(Landroid/car/xpeng/mode/ICarCareModeListener;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 82
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->getCarCareModeEnable()I

    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 72
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/car/xpeng/mode/ICarCareModeSvc$Stub;->setCarCareModeEnable(I)Z

    move-result p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
