.class public Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;
.super Landroid/content/ContentProvider;
.source "ApiPublisherProvider.java"


# static fields
.field public static CONTEXT:Landroid/content/Context;


# instance fields
.field private mMatcher:Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    .line 77
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 73
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->mMatcher:Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->match(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 63
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string p3, "binder"

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 66
    const-string p3, "manifest"

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 32
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 38
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->CONTEXT:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/ApiPublisherProvider;->mMatcher:Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 51
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    const/4 p1, 0x0

    return p1
.end method
