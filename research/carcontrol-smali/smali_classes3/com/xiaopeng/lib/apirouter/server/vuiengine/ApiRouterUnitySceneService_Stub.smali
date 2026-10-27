.class public Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;
.super Landroid/os/Binder;
.source "ApiRouterUnitySceneService_Stub.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public manifest:Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Manifest;

.field public provider:Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;

    invoke-direct {v0}, Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Manifest;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Manifest;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;->manifest:Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Manifest;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.xiaopeng.speech.apirouter.ApiRouterUnitySceneService"

    const-string v1, "java.lang.String"

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    const-string v3, "data"

    const-string v4, "event"

    const/4 v5, 0x0

    if-eq p1, v2, :cond_2

    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 74
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 78
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 80
    iget-object p4, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;

    invoke-virtual {p4, p2, p1}, Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;->onVuiQuery(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-static {p3, v5}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v2

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v2

    .line 57
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 61
    :try_start_1
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 62
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 63
    iget-object p4, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;

    invoke-virtual {p4, p2, p1}, Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-static {p3, v5}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v2

    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v2

    .line 40
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    :try_start_2
    const-string p2, "sceneId"

    .line 44
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p4, "elementId"

    .line 45
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 46
    iget-object p4, p0, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;->provider:Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;

    invoke-virtual {p4, p2, p1}, Lcom/xiaopeng/speech/apirouter/ApiRouterUnitySceneService;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v2

    :catch_2
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v2
.end method
