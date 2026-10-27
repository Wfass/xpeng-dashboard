.class public abstract Landroid/car/xpeng/remind/ICarRemind$Stub;
.super Landroid/os/Binder;
.source "ICarRemind.java"

# interfaces
.implements Landroid/car/xpeng/remind/ICarRemind;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/remind/ICarRemind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/remind/ICarRemind$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.remind.ICarRemind"

.field static final TRANSACTION_getPropertyConfigList:I = 0x4

.field static final TRANSACTION_getRemindStatus:I = 0x5

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.remind.ICarRemind"

    .line 39
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/remind/ICarRemind$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/remind/ICarRemind;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.remind.ICarRemind"

    .line 50
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Landroid/car/xpeng/remind/ICarRemind;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Landroid/car/xpeng/remind/ICarRemind;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Landroid/car/xpeng/remind/ICarRemind$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/remind/ICarRemind$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/remind/ICarRemind;
    .locals 1

    .line 232
    sget-object v0, Landroid/car/xpeng/remind/ICarRemind$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remind/ICarRemind;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/remind/ICarRemind;)Z
    .locals 1

    .line 225
    sget-object v0, Landroid/car/xpeng/remind/ICarRemind$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remind/ICarRemind;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 226
    sput-object p0, Landroid/car/xpeng/remind/ICarRemind$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/remind/ICarRemind;

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

    const-string v1, "android.car.xpeng.remind.ICarRemind"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 106
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remind/ICarRemind$Stub;->getRemindStatus(I)I

    move-result p1

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 96
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Landroid/car/xpeng/remind/ICarRemind$Stub;->getPropertyConfigList([I)Ljava/util/List;

    move-result-object p1

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 85
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Landroid/car/xpeng/remind/ICarRemind$Stub;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 72
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object p2

    .line 79
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/xpeng/remind/ICarRemind$Stub;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
