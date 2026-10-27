.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;
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
    name = "UpdateElementAttrRun"
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

    .line 1365
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->sceneId:Ljava/lang/String;

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

    .line 1379
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->updateViews:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1388
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1389
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1202(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    .line 1390
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1396
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneElementAttribute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VuiEngine"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v3, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATEATTRIBUTE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->updateViews:Ljava/util/List;

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1400(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->sceneId:Ljava/lang/String;

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

    .line 1383
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->updateViews:Ljava/util/List;

    return-void
.end method
