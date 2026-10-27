.class Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstrumentClusterNavigation.java"

# interfaces
.implements Landroid/car/cluster/renderer/IInstrumentClusterNavigation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/cluster/renderer/IInstrumentClusterNavigation;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInstrumentClusterInfo()Landroid/car/navigation/CarNavigationInstrumentCluster;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.cluster.renderer.IInstrumentClusterNavigation"

    .line 168
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation;->getInstrumentClusterInfo()Landroid/car/navigation/CarNavigationInstrumentCluster;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 173
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    sget-object v2, Landroid/car/navigation/CarNavigationInstrumentCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/navigation/CarNavigationInstrumentCluster;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.cluster.renderer.IInstrumentClusterNavigation"

    return-object v0
.end method

.method public onNavigationStateChanged(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.cluster.renderer.IInstrumentClusterNavigation"

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    iget-object v4, p0, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation;->onNavigationStateChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
