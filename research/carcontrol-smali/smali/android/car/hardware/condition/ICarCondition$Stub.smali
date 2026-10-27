.class public abstract Landroid/car/hardware/condition/ICarCondition$Stub;
.super Landroid/os/Binder;
.source "ICarCondition.java"

# interfaces
.implements Landroid/car/hardware/condition/ICarCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/condition/ICarCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.hardware.condition.ICarCondition"

.field static final TRANSACTION_registerCondition:I = 0x1

.field static final TRANSACTION_unregisterCondition:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.hardware.condition.ICarCondition"

    .line 29
    invoke-virtual {p0, p0, v0}, Landroid/car/hardware/condition/ICarCondition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/hardware/condition/ICarCondition;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.hardware.condition.ICarCondition"

    .line 40
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    instance-of v1, v0, Landroid/car/hardware/condition/ICarCondition;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Landroid/car/hardware/condition/ICarCondition;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/hardware/condition/ICarCondition;
    .locals 1

    .line 163
    sget-object v0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/condition/ICarCondition;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/hardware/condition/ICarCondition;)Z
    .locals 1

    .line 156
    sget-object v0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/condition/ICarCondition;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 157
    sput-object p0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/condition/ICarCondition;

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

    const-string v1, "android.car.hardware.condition.ICarCondition"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 81
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/hardware/condition/ICarConditionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/condition/ICarConditionEventListener;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/car/hardware/condition/ICarCondition$Stub;->unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V

    return v0

    .line 62
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 65
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 68
    sget-object p4, Landroid/car/hardware/condition/CarConditionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/car/hardware/condition/CarConditionInfo;

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    .line 74
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/condition/ICarConditionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/condition/ICarConditionEventListener;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/hardware/condition/ICarCondition$Stub;->registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
