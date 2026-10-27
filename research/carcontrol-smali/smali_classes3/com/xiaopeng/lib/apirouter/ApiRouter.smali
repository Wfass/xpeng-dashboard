.class public Lcom/xiaopeng/lib/apirouter/ApiRouter;
.super Ljava/lang/Object;
.source "ApiRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiRouter"

.field public static final UID_IVI:I = 0x0

.field public static final UID_RSE:I = 0xa

.field private static mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static publishModule(Lcom/xiaopeng/lib/apirouter/UriStruct;Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 0

    .line 33
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->fromJson(Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object p1

    .line 34
    sget-object p2, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {p2, p0, p1}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->publishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)V

    return-object p1
.end method

.method public static route(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 2
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1, v0, v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[BZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static route(Landroid/net/Uri;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1, p1, v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[BZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static route(Landroid/net/Uri;Z[BZI)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Z[BZI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {p0, p4}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->toUriStruct(Landroid/net/Uri;I)Lcom/xiaopeng/lib/apirouter/UriStruct;

    move-result-object p4

    .line 111
    sget-object v0, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v0, p4}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->matchRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v0

    const-string v1, "ApiRouter"

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "route: RemoteOperator is null!!! uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p4}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->isRemoteAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "route: RemoteOperator is not alive!!! uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/xiaopeng/lib/apirouter/ApiRouter;->mApiMatcher:Lcom/xiaopeng/lib/apirouter/ApiMatcher;

    invoke-virtual {v0, p4}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->unpublishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;)V

    .line 120
    invoke-static {p4}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v0

    .line 123
    :cond_1
    :goto_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->call(Landroid/net/Uri;Z[BZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static route(Landroid/net/Uri;[B)Ljava/lang/Object;
    .locals 2
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, v0, p1, v1, v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[BZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static route(Landroid/net/Uri;[BZ)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "[BZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v0, p1, p2, v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[BZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static route(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->access$000(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->access$100(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->access$200(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->access$300(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)Z

    move-result v3

    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;->access$400(Lcom/xiaopeng/lib/apirouter/ApiRouter$Builder;)I

    move-result p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;Z[BZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static toUriStruct(Landroid/net/Uri;I)Lcom/xiaopeng/lib/apirouter/UriStruct;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "."

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v3, "@"

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    .line 144
    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toUriStruct to find uid error fullAuthority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApiRouter"

    invoke-static {v5, v4, v2}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v2, 0x1

    add-int/2addr v3, v2

    .line 153
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v2

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/xiaopeng/lib/apirouter/UriStruct;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/UriStruct;-><init>()V

    .line 156
    iput-object v3, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    .line 157
    iput-object v0, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    .line 158
    iput p1, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->targetUid:I

    .line 160
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 161
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    .line 162
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    :cond_1
    return-object v1

    .line 136
    :cond_2
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Illegal uri authority"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Can not find authority in uri"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static wakeRemoteService(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->sContext:Landroid/content/Context;

    const-string v1, "ApiRouter"

    if-eqz v0, :cond_4

    .line 44
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 45
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ".api.publisher"

    const-string v4, "@"

    const-string v5, "content"

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->targetUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->targetUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 58
    sget-object v2, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    if-eqz v2, :cond_2

    const-string v0, "binder"

    .line 76
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v3, "manifest"

    .line 78
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    invoke-static {p0, v0, v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->publishModule(Lcom/xiaopeng/lib/apirouter/UriStruct;Landroid/os/IBinder;Ljava/lang/String;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "wakeRemoteService: remoteBinder or manifest is null!!!"

    .line 80
    invoke-static {v1, p0}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "No matching method"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string/jumbo p0, "wakeRemoteService: bundle is null!!!"

    .line 72
    invoke-static {v1, p0}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Server does not implement call"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 68
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 69
    throw p0

    :cond_3
    const-string/jumbo v0, "wakeRemoteService: contentProviderClient is null!!!"

    .line 60
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo p0, "wakeRemoteService: ApiRouter can not route. If it is an asynchronous thread, please check your Context first!!!"

    .line 40
    invoke-static {v1, p0}, Lcom/xiaopeng/lib/apirouter/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "ApiRouter can not route. If it is an asynchronous thread, please check your Context first!"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
