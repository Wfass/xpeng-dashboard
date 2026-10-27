.class Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstrumentClusterHelper.java"

# interfaces
.implements Landroid/car/cluster/renderer/IInstrumentClusterHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/cluster/renderer/IInstrumentClusterHelper;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.cluster.renderer.IInstrumentClusterHelper"

    return-object v0
.end method

.method public startFixedActivityModeForDisplayAndUser(Landroid/content/Intent;Landroid/os/Bundle;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.cluster.renderer.IInstrumentClusterHelper"

    .line 154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    :goto_1
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v4, p0, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 172
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/car/cluster/renderer/IInstrumentClusterHelper;->startFixedActivityModeForDisplayAndUser(Landroid/content/Intent;Landroid/os/Bundle;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 174
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 178
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p1

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public stopFixedActivityMode(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.cluster.renderer.IInstrumentClusterHelper"

    .line 196
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v2, p0, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-static {}, Landroid/car/cluster/renderer/IInstrumentClusterHelper$Stub;->getDefaultImpl()Landroid/car/cluster/renderer/IInstrumentClusterHelper;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/car/cluster/renderer/IInstrumentClusterHelper;->stopFixedActivityMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 203
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
