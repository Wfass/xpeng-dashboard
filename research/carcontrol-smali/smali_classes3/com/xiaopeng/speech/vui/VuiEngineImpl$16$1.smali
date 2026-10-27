.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;)V
    .locals 0

    .line 1613
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1616
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1617
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1620
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiEngine"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$view:Landroid/view/View;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v0, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v4, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$ids:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;->this$1:Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$callback:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V

    return-void
.end method
