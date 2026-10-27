.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDisplayLocation(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$handleCache:Z

.field final synthetic val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iput-boolean p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "updateDisplayLocation "

    .line 502
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    if-nez v1, :cond_1

    return-void

    .line 508
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getSceneId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 510
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;

    .line 511
    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$handleCache:Z

    if-eqz v3, :cond_3

    .line 512
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getAreaLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setAreaCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v3

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDisplayLocation  =======   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VuiSceneToolManager"

    invoke-static {v5, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v4, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 518
    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setSendState(Z)V

    .line 519
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 520
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "updateDisplayLocation"

    .line 521
    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneId"

    .line 522
    invoke-virtual {v6, v7, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 523
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "packageName"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 524
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getVersion()Ljava/lang/String;

    move-result-object v7

    const-string v8, "packageVersion"

    invoke-virtual {v6, v8, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "sceneData"

    .line 525
    invoke-virtual {v6, v7, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v3, 0x0

    .line 527
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateDisplayLocation to CarSpeech"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 529
    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setSendState(Z)V

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDisplayLocation to CarSpeech success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    .line 532
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 533
    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->removeDisplayCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 537
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiDisplayLocationInfoTestCache;->setSendState(Z)V

    .line 541
    :cond_4
    :goto_0
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_5

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$6;->val$vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
