.class public Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Stub;
.super Landroid/os/Binder;
.source "ClientObserver_Stub.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public manifest:Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Manifest;

.field public provider:Lcom/xiaopeng/aar/client/ipc/ClientObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    new-instance v0, Lcom/xiaopeng/aar/client/ipc/ClientObserver;

    invoke-direct {v0}, Lcom/xiaopeng/aar/client/ipc/ClientObserver;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Stub;->provider:Lcom/xiaopeng/aar/client/ipc/ClientObserver;

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Manifest;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Manifest;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Stub;->manifest:Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Manifest;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "data"

    const-string v5, "msgId"

    const-string v6, "module"

    const-string v7, "appId"

    const-string v8, "int"

    const-string v9, "type"

    const/4 v10, 0x0

    const-string v11, "com.xiaopeng.aar.client.ipc.ClientObserver"

    const/4 v12, 0x1

    const-string v13, "java.lang.String"

    if-eqz v0, :cond_2

    if-eq v0, v12, :cond_1

    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_0

    .line 83
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 38
    :cond_0
    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    .line 62
    :cond_1
    invoke-virtual {v2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 66
    :try_start_0
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 67
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 71
    invoke-static/range {p2 .. p2}, Lcom/xiaopeng/lib/apirouter/ParcelUtils;->readBlob(Landroid/os/Parcel;)[B

    move-result-object v20

    .line 72
    iget-object v14, v1, Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Stub;->provider:Lcom/xiaopeng/aar/client/ipc/ClientObserver;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual/range {v14 .. v20}, Lcom/xiaopeng/aar/client/ipc/ClientObserver;->onReceivedBlob(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-static {v3, v10}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v12

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v12

    .line 42
    :cond_2
    invoke-virtual {v2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 46
    :try_start_1
    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 47
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 51
    iget-object v14, v1, Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Stub;->provider:Lcom/xiaopeng/aar/client/ipc/ClientObserver;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual/range {v14 .. v19}, Lcom/xiaopeng/aar/client/ipc/ClientObserver;->onReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-static {v3, v10}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v12

    :catch_1
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v12
.end method
