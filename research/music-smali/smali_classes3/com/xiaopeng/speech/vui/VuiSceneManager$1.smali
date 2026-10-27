.class Lcom/xiaopeng/speech/vui/VuiSceneManager$1;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;->reBuildSceneToVuiProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

.field final synthetic val$sendSceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneManager;Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->val$sendSceneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->val$sendSceneId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    .line 309
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$100(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneManager;)Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 310
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->val$sendSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->val$sendSceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 315
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneManager$1;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;Z)V

    :cond_0
    return-void
.end method
