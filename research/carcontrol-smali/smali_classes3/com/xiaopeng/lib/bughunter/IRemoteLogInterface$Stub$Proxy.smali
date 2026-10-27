.class Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRemoteLogInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.lib.bughunter.IRemoteLogInterface"

    return-object v0
.end method

.method public uploadRemoteLog(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaopeng.lib.bughunter.IRemoteLogInterface"

    .line 101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface$Stub;->getDefaultImpl()Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/xiaopeng/lib/bughunter/IRemoteLogInterface;->uploadRemoteLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    throw p1
.end method
