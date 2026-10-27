.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handleNewRootviewToScene(Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/VuiPriority;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$views:Ljava/util/List;

.field final synthetic val$vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1683
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$views:Ljava/util/List;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$sceneId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1687
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$views:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$sceneId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1691
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1692
    return-void

    .line 1694
    :cond_1
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNewRootviewToScene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$vuiPriority:Lcom/xiaopeng/vui/commons/VuiPriority;

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->ADD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$17;->val$views:Ljava/util/List;

    const/4 v7, 0x1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1900(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    .line 1697
    return-void

    .line 1688
    .end local v0    # "newSceneId":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method
