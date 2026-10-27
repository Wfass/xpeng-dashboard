.class public abstract Landroid/car/xpeng/imm/ICarImmListener$Stub;
.super Landroid/os/Binder;
.source "ICarImmListener.java"

# interfaces
.implements Landroid/car/xpeng/imm/ICarImmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/imm/ICarImmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/imm/ICarImmListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.xpeng.imm.ICarImmListener"

.field static final TRANSACTION_onImmAvmStateChanged:I = 0x2

.field static final TRANSACTION_onImmStateChanged:I = 0x1

.field static final TRANSACTION_onImmVoiceAwakenStateChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.xpeng.imm.ICarImmListener"

    .line 35
    invoke-virtual {p0, p0, v0}, Landroid/car/xpeng/imm/ICarImmListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/imm/ICarImmListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.xpeng.imm.ICarImmListener"

    .line 46
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    instance-of v1, v0, Landroid/car/xpeng/imm/ICarImmListener;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Landroid/car/xpeng/imm/ICarImmListener;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Landroid/car/xpeng/imm/ICarImmListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/xpeng/imm/ICarImmListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/xpeng/imm/ICarImmListener;
    .locals 1

    .line 176
    sget-object v0, Landroid/car/xpeng/imm/ICarImmListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/imm/ICarImmListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/xpeng/imm/ICarImmListener;)Z
    .locals 1

    .line 169
    sget-object v0, Landroid/car/xpeng/imm/ICarImmListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/imm/ICarImmListener;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 170
    sput-object p0, Landroid/car/xpeng/imm/ICarImmListener$Stub$Proxy;->sDefaultImpl:Landroid/car/xpeng/imm/ICarImmListener;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.car.xpeng.imm.ICarImmListener"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 63
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 84
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v3, v0

    .line 87
    :cond_2
    invoke-virtual {p0, v3}, Landroid/car/xpeng/imm/ICarImmListener$Stub;->onImmVoiceAwakenStateChanged(Z)V

    return v0

    .line 76
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v3, v0

    .line 79
    :cond_4
    invoke-virtual {p0, v3}, Landroid/car/xpeng/imm/ICarImmListener$Stub;->onImmAvmStateChanged(Z)V

    return v0

    .line 68
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 71
    invoke-virtual {p0, p1}, Landroid/car/xpeng/imm/ICarImmListener$Stub;->onImmStateChanged(I)V

    return v0
.end method
