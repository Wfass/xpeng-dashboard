.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$displayLocation:Ljava/lang/String;

.field final synthetic val$isWholeScene:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 351
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-boolean p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$isWholeScene:Z

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$displayLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$isWholeScene:Z

    if-eqz v0, :cond_2

    .line 356
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 357
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, ""

    .line 358
    .local v1, "areaLocation":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    const-string v3, "SysDialog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "full"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAppAreaLocation()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v1, v2

    .line 360
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "exitDisplayLocationScene"

    .line 361
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "sceneId"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    .line 362
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$packageName:Ljava/lang/String;

    .line 363
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 364
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "displayLocation"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$displayLocation:Ljava/lang/String;

    .line 365
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "areaLocation"

    .line 366
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "exitScene"

    .line 369
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "sceneId"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    .line 370
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$packageName:Ljava/lang/String;

    .line 371
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 372
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 374
    :goto_1
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitScene-------------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", areaLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",displayLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 376
    const-string v2, "VuiSceneToolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitScene---success---------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "areaLocation":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitScene--e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 382
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isUseDisplayLocationPlatForm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "exitScene"

    .line 384
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "sceneId"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$sceneId:Ljava/lang/String;

    .line 385
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->val$packageName:Ljava/lang/String;

    .line 386
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageVersion"

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$4;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 387
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 390
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    goto :goto_2

    .line 391
    :catch_1
    move-exception v2

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    :goto_2
    return-void
.end method
