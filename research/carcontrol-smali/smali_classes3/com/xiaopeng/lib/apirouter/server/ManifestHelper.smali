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
    .locals 4

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    .line 14
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/CarControlSpeechObserver_Stub;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/CarControlSpeechObserver_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/CarControlSpeechObserver_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/CarControlSpeechObserver_Manifest;->getKey()Ljava/util/Set;

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

    .line 16
    sget-object v3, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/VuiUnityObserver_Stub;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/VuiUnityObserver_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/VuiUnityObserver_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/VuiUnityObserver_Manifest;->getKey()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    sget-object v3, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_1
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/VuiMainObserver_Stub;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/VuiMainObserver_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/VuiMainObserver_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/VuiMainObserver_Manifest;->getKey()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    sget-object v3, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 26
    :cond_2
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;

    invoke-direct {v1}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Stub;-><init>()V

    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;->toJsonManifest()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;->getKey()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    sget-object v3, Lcom/xiaopeng/lib/apirouter/server/ManifestHelper;->mapping:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
