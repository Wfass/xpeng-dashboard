.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lbxt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$callback:Lbxt;

.field final synthetic val$ids:Ljava/util/List;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lbxt;)V
    .locals 0

    .line 1608
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$ids:Ljava/util/List;

    iput-object p5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$callback:Lbxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "VuiEngine"

    .line 1612
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$sceneId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$view:Landroid/view/View;

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16$1;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1627
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1628
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1631
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1633
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$view:Landroid/view/View;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->UPDATE:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$ids:Ljava/util/List;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$16;->val$callback:Lbxt;

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lbxt;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1670
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
