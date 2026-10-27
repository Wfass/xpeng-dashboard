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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

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
    .locals 18

    .line 855
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v2

    move-object v13, v2

    .line 857
    .local v13, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v2, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 858
    const-string v2, "VuiEngine"

    const-string v3, "\u8981build\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    return-void

    .line 861
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v2

    move v14, v2

    .line 862
    .local v14, "state":I
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v14, v2, :cond_1

    .line 863
    iget-boolean v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$isWholeScene:Z

    if-eqz v2, :cond_1

    .line 864
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VuiSceneTagErr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u573a\u666f\u6570\u636e\u7684\u521b\u5efa\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    return-void

    .line 868
    :cond_1
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildScene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v2, 0x0

    .line 870
    .local v2, "newSuSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$subSceneIdList:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 871
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 872
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$subSceneIdList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 873
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 874
    .local v3, "size":I
    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 875
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 876
    .local v6, "subSceneId":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 877
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v7, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 874
    .end local v6    # "subSceneId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 880
    .end local v3    # "size":I
    .end local v5    # "i":I
    :cond_2
    move-object v15, v2

    .end local v2    # "newSuSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v15, "newSuSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v12

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    sget-object v5, Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;->BUILD:Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$customizeIds:Ljava/util/List;

    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$viewVuiHandler:Lcom/xiaopeng/vui/commons/IVuiElementListener;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$rootView:Landroid/view/View;

    aput-object v8, v3, v4

    .line 882
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-boolean v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$isWholeScene:Z

    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneCallbackHandler:Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    iget-object v11, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$displayLocation:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$8;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 880
    move-object v3, v0

    move-object/from16 v16, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v15

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v12, v16

    .end local v0    # "newSceneId":Ljava/lang/String;
    .local v17, "newSceneId":Ljava/lang/String;
    invoke-static/range {v2 .. v12}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1000(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/task/TaskDispatcher$TaskType;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;Ljava/util/List;Ljava/util/List;ZLcom/xiaopeng/speech/vui/ISceneCallbackHandler;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->dispatchTask(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    .end local v13    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v14    # "state":I
    .end local v15    # "newSuSceneIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "newSceneId":Ljava/lang/String;
    goto :goto_1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
