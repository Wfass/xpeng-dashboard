.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->onVuiQueryCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$event:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 317
    const-string v0, "VuiSceneToolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVuiQueryCallBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 319
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "onVuiQueryCallBack"

    .line 320
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sceneId"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$sceneId:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "event"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$event:Ljava/lang/String;

    .line 322
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "result"

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$3;->val$result:Ljava/lang/String;

    .line 323
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 325
    :try_start_0
    const-string v1, "VuiSceneToolManager"

    const-string v2, "onVuiQueryCallBack "

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    .local v1, "result":Ljava/lang/String;
    const-string v2, "VuiSceneToolManager"

    const-string v3, "onVuiQueryCallBack success"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 331
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
