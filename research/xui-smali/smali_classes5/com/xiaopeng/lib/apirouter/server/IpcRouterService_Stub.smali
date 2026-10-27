.class public Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;
.super Landroid/os/Binder;
.source "IpcRouterService_Stub.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public manifest:Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;

.field public provider:Lcom/xiaopeng/xuiservice/message/IpcRouterService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/message/IpcRouterService;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/message/IpcRouterService;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;->provider:Lcom/xiaopeng/xuiservice/message/IpcRouterService;

    .line 19
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;->manifest:Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;

    .line 20
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 24
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 31
    :cond_0
    const-string v1, "com.xiaopeng.xuiservice.IpcRouterService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return v0

    .line 35
    :cond_1
    const-string v1, "com.xiaopeng.xuiservice.IpcRouterService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 37
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 39
    .local v2, "ret":Ljava/lang/Void;
    :try_start_0
    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 40
    .local v3, "_real0":Ljava/lang/String;
    const-string v4, "bundle"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 41
    .local v4, "_real1":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;->provider:Lcom/xiaopeng/xuiservice/message/IpcRouterService;

    invoke-virtual {v5, v3, v4}, Lcom/xiaopeng/xuiservice/message/IpcRouterService;->onReceiverData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v3    # "_real0":Ljava/lang/String;
    .end local v4    # "_real1":Ljava/lang/String;
    nop

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-static {p3, v2}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    .line 49
    return v0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 45
    return v0
.end method
