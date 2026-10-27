.class public Lcom/xiaopeng/lib/apirouter/ApiRouter;
.super Ljava/lang/Object;
.source "ApiRouter.java"


# static fields
.field private static mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static publishModule(Lcom/xiaopeng/lib/apirouter/UriStruct;Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 2
    .param p0, "uriStruct"    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "iBinder"    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "operationManifest"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->fromJson(Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v0

    .line 27
    .local v0, "remoteOperator":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    sget-object v1, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->publishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)V

    .line 28
    return-object v0
.end method

.method public static route(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static route(Landroid/net/Uri;Z[B)Ljava/lang/Object;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "withBlob"    # Z
    .param p2, "blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Z[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->toUriStruct(Landroid/net/Uri;)Lcom/xiaopeng/lib/apirouter/UriStruct;

    move-result-object v0

    .line 82
    .local v0, "uriStruct":Lcom/xiaopeng/lib/apirouter/UriStruct;
    sget-object v1, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->matchRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v1

    .line 83
    .local v1, "remoteOperator":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    if-nez v1, :cond_0

    .line 84
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->isRemoteAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    sget-object v2, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->unpublishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;)V

    .line 88
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {v1, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->call(Landroid/net/Uri;Z[B)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static route(Landroid/net/Uri;[B)Ljava/lang/Object;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static toUriStruct(Landroid/net/Uri;)Lcom/xiaopeng/lib/apirouter/UriStruct;
    .locals 8
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "fullAuthority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "indexOfBinder":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "applicationId":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "serviceName":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/lib/apirouter/UriStruct;

    invoke-direct {v4}, Lcom/xiaopeng/lib/apirouter/UriStruct;-><init>()V

    .line 110
    .local v4, "uriStruct":Lcom/xiaopeng/lib/apirouter/UriStruct;
    iput-object v2, v4, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    .line 111
    iput-object v3, v4, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 114
    .local v5, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 115
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    .line 117
    :cond_0
    return-object v4

    .line 104
    .end local v2    # "applicationId":Ljava/lang/String;
    .end local v3    # "serviceName":Ljava/lang/String;
    .end local v4    # "uriStruct":Lcom/xiaopeng/lib/apirouter/UriStruct;
    .end local v5    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Illegal uri authority"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    .end local v1    # "indexOfBinder":I
    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Can not find authority in uri"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 7
    .param p0, "uriStruct"    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 37
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 38
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".api.publisher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 41
    :cond_0
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".api.publisher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    :goto_0
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 45
    .local v1, "contentProviderClient":Landroid/content/ContentProviderClient;
    if-eqz v1, :cond_3

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 54
    nop

    .line 56
    if-eqz v2, :cond_2

    .line 60
    const-string v3, "binder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 62
    .local v3, "remoteBinder":Landroid/os/IBinder;
    const-string v4, "manifest"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "manifest":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    invoke-static {p0, v3, v4}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->publishModule(Lcom/xiaopeng/lib/apirouter/UriStruct;Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v5

    return-object v5

    .line 64
    :cond_1
    new-instance v5, Landroid/os/RemoteException;

    const-string v6, "No matching method"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 57
    .end local v3    # "remoteBinder":Landroid/os/IBinder;
    .end local v4    # "manifest":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Server does not implement call"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 54
    throw v2

    .line 46
    :cond_3
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    .end local v0    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v1    # "contentProviderClient":Landroid/content/ContentProviderClient;
    :cond_4
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ApiRouter can not route. If it is an asynchronous thread, please check your Context first!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
