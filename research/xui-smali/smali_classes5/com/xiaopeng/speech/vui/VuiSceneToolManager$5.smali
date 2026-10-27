.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateAppAreaName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 412
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 416
    :try_start_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 417
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "updateAppArea"

    .line 418
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageName"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 419
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "packageVersion"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 420
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "areaType"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->val$type:Ljava/lang/String;

    .line 421
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 424
    const-string v1, "VuiSceneToolManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppAreaName---success---------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$5;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 428
    :goto_0
    return-void
.end method
