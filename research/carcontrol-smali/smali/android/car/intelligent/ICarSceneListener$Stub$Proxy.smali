.class Landroid/car/intelligent/ICarSceneListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarSceneListener.java"

# interfaces
.implements Landroid/car/intelligent/ICarSceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/intelligent/ICarSceneListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/intelligent/ICarSceneListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Landroid/car/intelligent/ICarSceneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/car/intelligent/ICarSceneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.car.intelligent.ICarSceneListener"

    return-object v0
.end method

.method public onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.car.intelligent.ICarSceneListener"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/car/intelligent/CarSceneEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    iget-object v1, p0, Landroid/car/intelligent/ICarSceneListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Landroid/car/intelligent/ICarSceneListener$Stub;->getDefaultImpl()Landroid/car/intelligent/ICarSceneListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-static {}, Landroid/car/intelligent/ICarSceneListener$Stub;->getDefaultImpl()Landroid/car/intelligent/ICarSceneListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/car/intelligent/ICarSceneListener;->onWelcomeSceneChanged(Landroid/car/intelligent/CarSceneEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
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
