.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$viewList:Ljava/util/List;

.field final synthetic val$vuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1547
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$ids:Ljava/util/List;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$vuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    iput-object p5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$viewList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1584
    return-void

    .line 1586
    :cond_0
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScene:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v7

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v3, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$ids:Ljava/util/List;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$vuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$15;->val$viewList:Ljava/util/List;

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    .end local v0    # "newSceneId":Ljava/lang/String;
    goto :goto_0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiEngine"

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1591
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
