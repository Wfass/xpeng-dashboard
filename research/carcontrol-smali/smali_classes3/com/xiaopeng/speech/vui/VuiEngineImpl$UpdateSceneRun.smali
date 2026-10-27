.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateSceneRun"
.end annotation


# instance fields
.field private sceneId:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field private updateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->updateViews:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1426
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1427
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1502(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    .line 1428
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1434
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VuiEngine"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v3, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->updateViews:Ljava/util/List;

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1413
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1421
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->updateViews:Ljava/util/List;

    return-void
.end method
