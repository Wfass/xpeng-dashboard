.class Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarCondition.java"

# interfaces
.implements Landroid/car/hardware/condition/ICarCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/condition/ICarCondition$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/hardware/condition/ICarCondition;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.hardware.condition.ICarCondition"

    return-object v0
.end method

.method public registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.hardware.condition.ICarCondition"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {p2, v0, v3}, Landroid/car/hardware/condition/CarConditionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 122
    invoke-interface {p3}, Landroid/car/hardware/condition/ICarConditionEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 123
    iget-object v4, p0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    invoke-static {}, Landroid/car/hardware/condition/ICarCondition$Stub;->getDefaultImpl()Landroid/car/hardware/condition/ICarCondition;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 125
    invoke-static {}, Landroid/car/hardware/condition/ICarCondition$Stub;->getDefaultImpl()Landroid/car/hardware/condition/ICarCondition;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/hardware/condition/ICarCondition;->registerCondition(Ljava/util/List;Landroid/car/hardware/condition/CarConditionInfo;Landroid/car/hardware/condition/ICarConditionEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 128
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.hardware.condition.ICarCondition"

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Landroid/car/hardware/condition/ICarConditionEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 141
    iget-object v2, p0, Landroid/car/hardware/condition/ICarCondition$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-static {}, Landroid/car/hardware/condition/ICarCondition$Stub;->getDefaultImpl()Landroid/car/hardware/condition/ICarCondition;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    invoke-static {}, Landroid/car/hardware/condition/ICarCondition$Stub;->getDefaultImpl()Landroid/car/hardware/condition/ICarCondition;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/hardware/condition/ICarCondition;->unregisterCondition(Landroid/car/hardware/condition/ICarConditionEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
