.class public abstract Landroid/car/intelligent/ICarIntelligentEngine$Stub;
.super Landroid/os/Binder;
.source "ICarIntelligentEngine.java"

# interfaces
.implements Landroid/car/intelligent/ICarIntelligentEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/intelligent/ICarIntelligentEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/intelligent/ICarIntelligentEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.intelligent.ICarIntelligentEngine"

.field static final TRANSACTION_getCarArHudDrivingSceneNRALevel:I = 0xb

.field static final TRANSACTION_getCarDrivingSceneNRALevel:I = 0x7

.field static final TRANSACTION_registerCarArHudDrivingSceneListener:I = 0x8

.field static final TRANSACTION_registerCarDrivingSceneListener:I = 0x4

.field static final TRANSACTION_registerCarWelcomeSceneListener:I = 0x2

.field static final TRANSACTION_setCarArHudDrivingSceneNRALevel:I = 0xa

.field static final TRANSACTION_setCarDrivingSceneNRALevel:I = 0x6

.field static final TRANSACTION_unregisterCarArHudDrivingSceneListener:I = 0x9

.field static final TRANSACTION_unregisterCarDrivingSceneListener:I = 0x5

.field static final TRANSACTION_unregisterCarWelcomeSceneListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.intelligent.ICarIntelligentEngine"

    .line 61
    invoke-virtual {p0, p0, v0}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarIntelligentEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.intelligent.ICarIntelligentEngine"

    .line 72
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    instance-of v1, v0, Landroid/car/intelligent/ICarIntelligentEngine;

    if-eqz v1, :cond_1

    .line 74
    check-cast v0, Landroid/car/intelligent/ICarIntelligentEngine;

    return-object v0

    .line 76
    :cond_1
    new-instance v0, Landroid/car/intelligent/ICarIntelligentEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/intelligent/ICarIntelligentEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/intelligent/ICarIntelligentEngine;
    .locals 1

    .line 413
    sget-object v0, Landroid/car/intelligent/ICarIntelligentEngine$Stub$Proxy;->sDefaultImpl:Landroid/car/intelligent/ICarIntelligentEngine;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/intelligent/ICarIntelligentEngine;)Z
    .locals 1

    .line 406
    sget-object v0, Landroid/car/intelligent/ICarIntelligentEngine$Stub$Proxy;->sDefaultImpl:Landroid/car/intelligent/ICarIntelligentEngine;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 407
    sput-object p0, Landroid/car/intelligent/ICarIntelligentEngine$Stub$Proxy;->sDefaultImpl:Landroid/car/intelligent/ICarIntelligentEngine;

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

    const-string v2, "android.car.intelligent.ICarIntelligentEngine"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 174
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->getCarArHudDrivingSceneNRALevel()I

    move-result p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 165
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->setCarArHudDrivingSceneNRALevel(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 156
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/intelligent/ICarArHudDrivingSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarArHudDrivingSceneListener;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->unregisterCarArHudDrivingSceneListener(Landroid/car/intelligent/ICarArHudDrivingSceneListener;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 147
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/intelligent/ICarArHudDrivingSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarArHudDrivingSceneListener;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->registerCarArHudDrivingSceneListener(Landroid/car/intelligent/ICarArHudDrivingSceneListener;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 139
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->getCarDrivingSceneNRALevel()I

    move-result p1

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 130
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->setCarDrivingSceneNRALevel(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 121
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/intelligent/ICarDrivingSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarDrivingSceneListener;

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->unregisterCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/intelligent/ICarDrivingSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarDrivingSceneListener;

    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->registerCarDrivingSceneListener(Landroid/car/intelligent/ICarDrivingSceneListener;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/intelligent/ICarSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarSceneListener;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->unregisterCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 94
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/intelligent/ICarSceneListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/intelligent/ICarSceneListener;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Landroid/car/intelligent/ICarIntelligentEngine$Stub;->registerCarWelcomeSceneListener(Landroid/car/intelligent/ICarSceneListener;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
