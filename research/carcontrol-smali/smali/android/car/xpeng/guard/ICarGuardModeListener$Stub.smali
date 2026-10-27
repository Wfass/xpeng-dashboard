.class public abstract Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;
.super Landroid/os/Binder;
.source "ICarGuardModeListener.java"

# interfaces
.implements Landroid/car/xpeng/guard/ICarGuardModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/guard/ICarGuardModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.guard.ICarGuardModeListener"

.field static final TRANSACTION_onCarGuardModeActiveChanged:I = 0x5

.field static final TRANSACTION_onCarGuardModeChanged:I = 0x1

.field static final TRANSACTION_onCarGuardModeLevelChanged:I = 0x4

.field static final TRANSACTION_onCarGuardModeSceneOrientationChanged:I = 0x6

.field static final TRANSACTION_onCarGuardModeWork:I = 0x2

.field static final TRANSACTION_onOtherStatistics:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 44
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/guard/ICarGuardModeListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.guard.ICarGuardModeListener"

    .line 55
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    instance-of v1, v0, Landroid/car/xpeng/guard/ICarGuardModeListener;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Landroid/car/xpeng/guard/ICarGuardModeListener;

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeListener;
    .locals 1

    .line 277
    sget-object v0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/guard/ICarGuardModeListener;)Z
    .locals 1

    .line 270
    sget-object v0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 271
    sput-object p0, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeListener;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.xpeng.guard.ICarGuardModeListener"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 129
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->onCarGuardModeSceneOrientationChanged(I)V

    return v1

    .line 119
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 123
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p0, v0, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->onCarGuardModeActiveChanged(ZI)V

    return v1

    .line 109
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->onCarGuardModeLevelChanged(II)V

    return v1

    .line 98
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 103
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p2

    .line 104
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->onOtherStatistics(ILjava/util/Map;)V

    return v1

    .line 90
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->onCarGuardModeWork(Z)V

    return v1

    .line 77
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Landroid/car/xpeng/guard/CarGuardModeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/xpeng/guard/CarGuardModeEvent;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->onCarGuardModeChanged(Landroid/car/xpeng/guard/CarGuardModeEvent;)V

    return v1

    .line 72
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
