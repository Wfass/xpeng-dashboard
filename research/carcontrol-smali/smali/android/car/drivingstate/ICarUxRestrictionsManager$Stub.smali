.class public abstract Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
.super Landroid/os/Binder;
.source "ICarUxRestrictionsManager.java"

# interfaces
.implements Landroid/car/drivingstate/ICarUxRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/ICarUxRestrictionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.drivingstate.ICarUxRestrictionsManager"

.field static final TRANSACTION_getConfigs:I = 0x6

.field static final TRANSACTION_getCurrentUxRestrictions:I = 0x3

.field static final TRANSACTION_getRestrictionMode:I = 0xc

.field static final TRANSACTION_getStagedConfigs:I = 0x5

.field static final TRANSACTION_registerUxRestrictionsChangeListener:I = 0x1

.field static final TRANSACTION_saveUxRestrictionsConfigurationForNextBoot:I = 0x4

.field static final TRANSACTION_setRestrictionMode:I = 0xb

.field static final TRANSACTION_unregisterUxRestrictionsChangeListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 62
    invoke-virtual {p0, p0, v0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarUxRestrictionsManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 73
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    instance-of v1, v0, Landroid/car/drivingstate/ICarUxRestrictionsManager;

    if-eqz v1, :cond_1

    .line 75
    check-cast v0, Landroid/car/drivingstate/ICarUxRestrictionsManager;

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;
    .locals 1

    .line 382
    sget-object v0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->sDefaultImpl:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/drivingstate/ICarUxRestrictionsManager;)Z
    .locals 1

    .line 375
    sget-object v0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->sDefaultImpl:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 376
    sput-object p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->sDefaultImpl:Landroid/car/drivingstate/ICarUxRestrictionsManager;

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

    const/16 v0, 0xb

    const/4 v1, 0x1

    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 149
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getConfigs()Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 141
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getStagedConfigs()Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 131
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    sget-object p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z

    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 115
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 118
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1, p3, v1}, Landroid/car/drivingstate/CarUxRestrictions;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 106
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 95
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 100
    invoke-virtual {p0, p1, p2}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 167
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getRestrictionMode()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 157
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->setRestrictionMode(Ljava/lang/String;)Z

    move-result p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

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
