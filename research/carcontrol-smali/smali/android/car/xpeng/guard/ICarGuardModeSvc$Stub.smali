.class public abstract Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;
.super Landroid/os/Binder;
.source "ICarGuardModeSvc.java"

# interfaces
.implements Landroid/car/xpeng/guard/ICarGuardModeSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/guard/ICarGuardModeSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.guard.ICarGuardModeSvc"

.field static final TRANSACTION_getCarGuardModeLevel:I = 0x3

.field static final TRANSACTION_getCarGuardModeSensitivity:I = 0x8

.field static final TRANSACTION_getCurrentCarGuardModeEvent:I = 0x7

.field static final TRANSACTION_registerCarGuardModeListener:I = 0x4

.field static final TRANSACTION_setCarGuardModeLevel:I = 0x2

.field static final TRANSACTION_setCarGuardModeSensitivity:I = 0x9

.field static final TRANSACTION_setCarGuardThresholdJson:I = 0x6

.field static final TRANSACTION_unregisterCarGuardModeListener:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.guard.ICarGuardModeSvc"

    .line 74
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/guard/ICarGuardModeSvc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.guard.ICarGuardModeSvc"

    .line 85
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Landroid/car/xpeng/guard/ICarGuardModeSvc;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Landroid/car/xpeng/guard/ICarGuardModeSvc;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/guard/ICarGuardModeSvc;
    .locals 1

    .line 401
    sget-object v0, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/guard/ICarGuardModeSvc;)Z
    .locals 1

    .line 394
    sget-object v0, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeSvc;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 395
    sput-object p0, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/guard/ICarGuardModeSvc;

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

    const-string v2, "android.car.xpeng.guard.ICarGuardModeSvc"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 174
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 177
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->setCarGuardModeSensitivity(I)I

    move-result p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 166
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->getCarGuardModeSensitivity()I

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 152
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->getCurrentCarGuardModeEvent()Landroid/car/xpeng/guard/CarGuardModeEvent;

    move-result-object p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p1, p3, v1}, Landroid/car/xpeng/guard/CarGuardModeEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 143
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->setCarGuardThresholdJson(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 134
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->unregisterCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 125
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/xpeng/guard/ICarGuardModeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/guard/ICarGuardModeListener;

    move-result-object p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->registerCarGuardModeListener(Landroid/car/xpeng/guard/ICarGuardModeListener;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->getCarGuardModeLevel()I

    move-result p1

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 107
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/ICarGuardModeSvc$Stub;->setCarGuardModeLevel(I)I

    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 102
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
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
