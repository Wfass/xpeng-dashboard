.class Lcom/qiyi/video/qys/IQYSCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQYSCallback.java"

# interfaces
.implements Lcom/qiyi/video/qys/IQYSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/qys/IQYSCallback$Stub;
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/qiyi/video/qys/IQYSCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/qiyi/video/qys/IQYSCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "com.qiyi.video.qys.IQYSCallback"

    return-object v0
.end method

.method public onResponse(Lcom/qiyi/video/qys/IQYSResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/qiyi/video/qys/IQYSResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.qiyi.video.qys.IQYSCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p1, v0, v3}, Lcom/qiyi/video/qys/IQYSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    :goto_0
    iget-object v4, p0, Lcom/qiyi/video/qys/IQYSCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    nop

    .line 103
    return-void

    .line 100
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 102
    throw v2
.end method
