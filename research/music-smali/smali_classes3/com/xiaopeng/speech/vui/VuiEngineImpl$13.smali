.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateScene(Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1461
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$sceneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1464
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$view:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$sceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "VuiEngine"

    const-string v1, "updateScene"

    .line 1470
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x32

    if-eqz v0, :cond_3

    .line 1472
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$sceneId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1474
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->getUpdateViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1475
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1477
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->setUpdateViews(Ljava/util/List;)V

    .line 1478
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1480
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->run()V

    .line 1481
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    new-instance v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    invoke-direct {v5, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-static {v0, v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1502(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    .line 1482
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->setSceneId(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    new-array v2, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$view:Landroid/view/View;

    aput-object v5, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->setUpdateViews(Ljava/util/List;)V

    .line 1484
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1487
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    new-instance v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    invoke-direct {v5, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-static {v0, v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1502(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    .line 1488
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->setSceneId(Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v0

    new-array v2, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->val$view:Landroid/view/View;

    aput-object v5, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;->setUpdateViews(Ljava/util/List;)V

    .line 1490
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$13;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateSceneRun;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
