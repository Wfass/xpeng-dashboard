.class public abstract Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub;
.super Landroid/os/Binder;
.source "ICarEnergyConspListener.java"

# interfaces
.implements Landroid/car/xpeng/energy/ICarEnergyConspListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/energy/ICarEnergyConspListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.energy.ICarEnergyConspListener"

.field static final TRANSACTION_onCarEnergyConspChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.energy.ICarEnergyConspListener"

    .line 29
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/energy/ICarEnergyConspListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.energy.ICarEnergyConspListener"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Landroid/car/xpeng/energy/ICarEnergyConspListener;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Landroid/car/xpeng/energy/ICarEnergyConspListener;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/energy/ICarEnergyConspListener;
    .locals 1

    .line 127
    sget-object v0, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/energy/ICarEnergyConspListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/energy/ICarEnergyConspListener;)Z
    .locals 1

    .line 120
    sget-object v0, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/energy/ICarEnergyConspListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 121
    sput-object p0, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/energy/ICarEnergyConspListener;

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

    const-string v1, "android.car.xpeng.energy.ICarEnergyConspListener"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 62
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    sget-object p1, Landroid/car/xpeng/energy/CarEnergyConspEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/energy/CarEnergyConspEvent;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/xpeng/energy/ICarEnergyConspListener$Stub;->onCarEnergyConspChange(Landroid/car/xpeng/energy/CarEnergyConspEvent;)V

    return v0
.end method
