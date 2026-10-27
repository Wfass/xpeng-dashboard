.class public Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;
.super Ljava/lang/Object;
.source "ManifestHelper.java"


# static fields
.field public static mapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    .line 12
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .local v0, "stub0":Landroid/util/Pair;
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;->getKey()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Lcom/xiaopeng/lib/apirouter/server/BugHunterServicePublisher_Stub;

    invoke-direct {v2}, Lcom/xiaopeng/lib/apirouter/server/BugHunterServicePublisher_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/BugHunterServicePublisher_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    .local v1, "stub1":Landroid/util/Pair;
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/BugHunterServicePublisher_Manifest;->getKey()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 21
    .end local v0    # "stub0":Landroid/util/Pair;
    .end local v1    # "stub1":Landroid/util/Pair;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
