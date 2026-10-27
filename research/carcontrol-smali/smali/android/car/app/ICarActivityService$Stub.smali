.class public abstract Landroid/car/app/ICarActivityService$Stub;
.super Landroid/os/Binder;
.source "ICarActivityService.java"

# interfaces
.implements Landroid/car/app/ICarActivityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/app/ICarActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/app/ICarActivityService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.app.ICarActivityService"

.field static final TRANSACTION_setPersistentActivity:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.app.ICarActivityService"

    .line 31
    invoke-virtual {p0, p0, v0}, Landroid/car/app/ICarActivityService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/app/ICarActivityService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.app.ICarActivityService"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Landroid/car/app/ICarActivityService;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Landroid/car/app/ICarActivityService;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Landroid/car/app/ICarActivityService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/app/ICarActivityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/app/ICarActivityService;
    .locals 1

    .line 146
    sget-object v0, Landroid/car/app/ICarActivityService$Stub$Proxy;->sDefaultImpl:Landroid/car/app/ICarActivityService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/app/ICarActivityService;)Z
    .locals 1

    .line 139
    sget-object v0, Landroid/car/app/ICarActivityService$Stub$Proxy;->sDefaultImpl:Landroid/car/app/ICarActivityService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 140
    sput-object p0, Landroid/car/app/ICarActivityService$Stub$Proxy;->sDefaultImpl:Landroid/car/app/ICarActivityService;

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

    const-string v1, "android.car.app.ICarActivityService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 64
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 67
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 76
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/app/ICarActivityService$Stub;->setPersistentActivity(Landroid/content/ComponentName;II)I

    move-result p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
