.class public Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;
.super Ljava/lang/Object;
.source "ManifestHelper_VuiEngine.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mapping:Ljava/util/HashMap;
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
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getMapping()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .local v0, "stub0":Landroid/util/Pair;
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterUnitySceneService_Manifest;->getKey()Ljava/util/Set;

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

    .line 18
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;

    invoke-direct {v2}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .local v1, "stub1":Landroid/util/Pair;
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterSceneService_Manifest;->getKey()Ljava/util/Set;

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

    .line 22
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 24
    :cond_1
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterOverallService_Stub;

    invoke-direct {v3}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterOverallService_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterOverallService_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .local v2, "stub2":Landroid/util/Pair;
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterOverallService_Manifest;->getKey()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 26
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2

    .line 28
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper_VuiEngine;->mapping:Ljava/util/HashMap;

    return-object v3
.end method
