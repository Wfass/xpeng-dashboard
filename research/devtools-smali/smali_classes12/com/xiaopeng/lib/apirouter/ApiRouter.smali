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
    .locals 0
    .param p0    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->fromJson(Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object p1

    .line 27
    sget-object p2, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {p2, p0, p1}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->publishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)V

    .line 28
    return-object p1
.end method

.method public static route(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 2
    .param p0    # Landroid/net/Uri;
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

    move-result-object p0

    return-object p0
.end method

.method private static route(Landroid/net/Uri;Z[B)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    sget-object v1, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->matchRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v1

    .line 83
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
    sget-object v1, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->unpublishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;)V

    .line 88
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {v1, p0, p1, p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->call(Landroid/net/Uri;Z[B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static route(Landroid/net/Uri;[B)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    move-result-object p0

    return-object p0
.end method

.method private static toUriStruct(Landroid/net/Uri;)Lcom/xiaopeng/lib/apirouter/UriStruct;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 103
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 108
    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/xiaopeng/lib/apirouter/UriStruct;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/UriStruct;-><init>()V

    .line 110
    iput-object v2, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    .line 111
    iput-object v0, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 114
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 115
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    .line 117
    :cond_0
    return-object v1

    .line 104
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Illegal uri authority"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Can not find authority in uri"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 4
    .param p0    # Lcom/xiaopeng/lib/apirouter/UriStruct;
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

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 54
    nop

    .line 56
    if-eqz v1, :cond_2

    .line 60
    const-string v0, "binder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 62
    const-string v2, "manifest"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->publishModule(Lcom/xiaopeng/lib/apirouter/UriStruct;Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "No matching method"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Server does not implement call"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 54
    throw p0

    .line 46
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_4
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "ApiRouter can not route. If it is an asynchronous thread, please check your Context first!"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
