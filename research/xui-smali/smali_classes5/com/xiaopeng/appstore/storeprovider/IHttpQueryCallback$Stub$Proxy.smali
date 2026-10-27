.class Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHttpQueryCallback.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "com.xiaopeng.appstore.storeprovider.IHttpQueryCallback"

    return-object v0
.end method

.method public onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    .locals 5
    .param p1, "response"    # Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 98
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.xiaopeng.appstore.storeprovider.IHttpQueryCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 107
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 108
    invoke-static {}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;->getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;->onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-void

    .line 111
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    throw v2
.end method
