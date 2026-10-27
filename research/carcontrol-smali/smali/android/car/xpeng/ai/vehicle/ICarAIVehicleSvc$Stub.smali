.class public abstract Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;
.super Landroid/os/Binder;
.source "ICarAIVehicleSvc.java"

# interfaces
.implements Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.ai.vehicle.ICarAIVehicleSvc"

.field static final TRANSACTION_setFloatPropertyByACMachine:I = 0x2

.field static final TRANSACTION_setHvacPowerModeByACMachine:I = 0x3

.field static final TRANSACTION_setHvacTempDriverDown:I = 0x5

.field static final TRANSACTION_setHvacTempDriverUp:I = 0x4

.field static final TRANSACTION_setHvacTempPsnDown:I = 0x7

.field static final TRANSACTION_setHvacTempPsnUp:I = 0x6

.field static final TRANSACTION_setIntPropertyByACMachine:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.ai.vehicle.ICarAIVehicleSvc"

    .line 47
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.ai.vehicle.ICarAIVehicleSvc"

    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;
    .locals 1

    .line 321
    sget-object v0, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;)Z
    .locals 1

    .line 314
    sget-object v0, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 315
    sput-object p0, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc;

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

    const-string v2, "android.car.xpeng.ai.vehicle.ICarAIVehicleSvc"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 140
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setHvacTempPsnDown(F)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setHvacTempPsnUp(F)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 122
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setHvacTempDriverDown(F)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 113
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setHvacTempDriverUp(F)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setHvacPowerModeByACMachine(II)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 91
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setFloatPropertyByACMachine(IF)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 80
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 85
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/ai/vehicle/ICarAIVehicleSvc$Stub;->setIntPropertyByACMachine(II)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
