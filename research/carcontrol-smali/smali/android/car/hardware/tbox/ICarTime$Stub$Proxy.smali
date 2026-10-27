.class Landroid/car/hardware/tbox/ICarTime$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarTime.java"

# interfaces
.implements Landroid/car/hardware/tbox/ICarTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/tbox/ICarTime$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/hardware/tbox/ICarTime;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroid/car/hardware/tbox/ICarTime$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/car/hardware/tbox/ICarTime$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.hardware.tbox.ICarTime"

    return-object v0
.end method

.method public setCarTimezone(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.tbox.ICarTime"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Landroid/car/hardware/tbox/ICarTime$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Landroid/car/hardware/tbox/ICarTime$Stub;->getDefaultImpl()Landroid/car/hardware/tbox/ICarTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Landroid/car/hardware/tbox/ICarTime$Stub;->getDefaultImpl()Landroid/car/hardware/tbox/ICarTime;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/car/hardware/tbox/ICarTime;->setCarTimezone(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
