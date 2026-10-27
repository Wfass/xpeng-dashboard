.class Landroid/car/IAppFocusOwnershipCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppFocusOwnershipCallback.java"

# interfaces
.implements Landroid/car/IAppFocusOwnershipCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/IAppFocusOwnershipCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/IAppFocusOwnershipCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/car/IAppFocusOwnershipCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/car/IAppFocusOwnershipCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.IAppFocusOwnershipCallback"

    return-object v0
.end method

.method public onAppFocusOwnershipGranted(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.IAppFocusOwnershipCallback"

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v1, p0, Landroid/car/IAppFocusOwnershipCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-static {}, Landroid/car/IAppFocusOwnershipCallback$Stub;->getDefaultImpl()Landroid/car/IAppFocusOwnershipCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-static {}, Landroid/car/IAppFocusOwnershipCallback$Stub;->getDefaultImpl()Landroid/car/IAppFocusOwnershipCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/IAppFocusOwnershipCallback;->onAppFocusOwnershipGranted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
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

.method public onAppFocusOwnershipLost(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.IAppFocusOwnershipCallback"

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v1, p0, Landroid/car/IAppFocusOwnershipCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Landroid/car/IAppFocusOwnershipCallback$Stub;->getDefaultImpl()Landroid/car/IAppFocusOwnershipCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Landroid/car/IAppFocusOwnershipCallback$Stub;->getDefaultImpl()Landroid/car/IAppFocusOwnershipCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/IAppFocusOwnershipCallback;->onAppFocusOwnershipLost(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
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
