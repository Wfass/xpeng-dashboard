.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->vuiFeedBack(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$resourceName:Ljava/lang/String;

.field final synthetic val$soundArea:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->val$resourceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->val$content:Ljava/lang/String;

    iput p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->val$soundArea:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "VuiSceneToolManager"

    .line 281
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 282
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "vuiSoundAreaFeedback"

    .line 283
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 284
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 285
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "packageVersion"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->val$resourceName:Ljava/lang/String;

    const-string v4, "resourceName"

    .line 286
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "state"

    const-string v4, "-1"

    .line 287
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 288
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->val$content:Ljava/lang/String;

    const-string v4, "content"

    .line 289
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$2;->val$soundArea:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "soundArea"

    .line 290
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :try_start_0
    const-string/jumbo v2, "vuiSoundAreaFeedback "

    .line 292
    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v1, "vuiSoundAreaFeedback success"

    .line 294
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
