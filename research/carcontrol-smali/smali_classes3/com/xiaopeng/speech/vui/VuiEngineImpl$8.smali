.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$customizeIds:Ljava/util/List;

.field final synthetic val$displayLocation:Ljava/lang/String;

.field final synthetic val$isWholeScene:Z

.field final synthetic val$rootView:Landroid/view/View;

.field final synthetic val$sceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field final synthetic val$subSceneIdList:Ljava/util/List;

.field final synthetic val$viewVuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;ZLjava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Landroid/view/View;Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$isWholeScene:Z

    iput-object p5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$subSceneIdList:Ljava/util/List;

    iput-object p6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$customizeIds:Ljava/util/List;

    iput-object p7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$viewVuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    iput-object p8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$rootView:Landroid/view/View;

    iput-object p9, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    iput-object p10, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$displayLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "VuiEngine"

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 856
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 857
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\u8981build\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    .line 858
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 861
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v1

    .line 862
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 863
    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$isWholeScene:Z

    if-eqz v1, :cond_1

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTagErr]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u573a\u666f\u6570\u636e\u7684\u521b\u5efa\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 868
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 870
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$subSceneIdList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 871
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 872
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$subSceneIdList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 873
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    .line 875
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 876
    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 877
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v7, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 880
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$customizeIds:Ljava/util/List;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$viewVuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    const/4 v9, 0x1

    new-array v9, v9, [Landroid/view/View;

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$rootView:Landroid/view/View;

    aput-object v10, v9, v3

    .line 882
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iget-boolean v10, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$isWholeScene:Z

    iget-object v11, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$displayLocation:Ljava/lang/String;

    iget-object v13, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-object v3, v2

    .line 880
    invoke-static/range {v3 .. v13}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
