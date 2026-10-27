.class Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILocationServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "com.xiaopeng.lib.framework.locationmodule.ILocationServiceCallback"

    return-object v0
.end method

.method public locationChanged(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 5
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 82
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.lib.framework.locationmodule.ILocationServiceCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
