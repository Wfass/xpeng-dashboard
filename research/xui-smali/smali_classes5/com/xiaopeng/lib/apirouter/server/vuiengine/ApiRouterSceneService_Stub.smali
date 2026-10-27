.class public Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;
.super Landroid/os/Binder;
.source "ApiRouterSceneService_Stub.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public manifest:Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Manifest;

.field public provider:Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;

    invoke-direct {v0}, Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Manifest;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Manifest;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;->manifest:Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Manifest;

    .line 25
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 29
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

    .line 34
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 57
    :pswitch_0
    const-string v2, "com.xiaopeng.speech.apirouter.ApiRouterSceneService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 59
    .local v2, "uri":Landroid/net/Uri;
    nop

    .line 61
    .local v0, "ret":Ljava/lang/Void;
    :try_start_0
    const-string v3, "event"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "_real0":Ljava/lang/String;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 63
    .local v4, "_real1":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;

    invoke-virtual {v5, v3, v4}, Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v3    # "_real0":Ljava/lang/String;
    .end local v4    # "_real1":Ljava/lang/String;
    nop

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-static {p3, v0}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    .line 71
    return v1

    .line 64
    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 67
    return v1

    .line 40
    .end local v0    # "ret":Ljava/lang/Void;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v2, "com.xiaopeng.speech.apirouter.ApiRouterSceneService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 42
    .restart local v2    # "uri":Landroid/net/Uri;
    nop

    .line 44
    .local v0, "ret":Ljava/lang/String;
    :try_start_1
    const-string v3, "sceneId"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    .local v3, "_real0":Ljava/lang/String;
    const-string v4, "elementId"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String"

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    .restart local v4    # "_real1":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;

    invoke-virtual {v5, v3, v4}, Lcom/xiaopeng/speech/apirouter/ApiRouterSceneService;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v5

    .line 51
    .end local v3    # "_real0":Ljava/lang/String;
    .end local v4    # "_real1":Ljava/lang/String;
    nop

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, v0}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    .line 54
    return v1

    .line 47
    :catch_1
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 50
    return v1

    .line 36
    .end local v0    # "ret":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v0, "com.xiaopeng.speech.apirouter.ApiRouterSceneService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
