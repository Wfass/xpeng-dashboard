.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->addSceneElement(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$parentElementId:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1795
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$parentElementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1798
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1799
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSceneElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$parentElementId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-array v7, v1, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$21;->val$view:Landroid/view/View;

    aput-object v8, v7, v1

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Lbyb;Lbxv;[Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    return-void
.end method
