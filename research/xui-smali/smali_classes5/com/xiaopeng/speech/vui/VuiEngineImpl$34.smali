.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setBuildElements(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$elements:Ljava/util/List;

.field final synthetic val$isMainScene:Z

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$subSceneIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2686
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    iput-object p5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .line 2690
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2691
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v2

    move v8, v2

    .line 2692
    .local v8, "state":I
    sget-object v2, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v2

    if-ne v8, v2, :cond_0

    .line 2693
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u573a\u666f\u6570\u636e\u7684\u521b\u5efa\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2694
    return-void

    .line 2696
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2697
    .local v3, "time":J
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 2698
    .local v2, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2700
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 2701
    .local v5, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    if-eqz v5, :cond_1

    .line 2702
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v5, v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2703
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    .line 2707
    .local v6, "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    if-eqz v6, :cond_2

    .line 2708
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v6, v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2709
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v7

    .line 2713
    .local v7, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const/4 v9, 0x1

    if-eqz v7, :cond_3

    iget-boolean v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    if-nez v10, :cond_3

    .line 2714
    invoke-virtual {v7, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2716
    :cond_3
    iget-boolean v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    if-eqz v10, :cond_e

    .line 2717
    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    if-eqz v9, :cond_c

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 2718
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move v9, v11

    .end local v11    # "i":I
    .local v9, "i":I
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 2719
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2720
    .local v10, "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v11

    .line 2721
    .local v11, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-nez v11, :cond_5

    .line 2722
    if-eqz v7, :cond_4

    .line 2723
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 2725
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v12

    invoke-virtual {v12, v10, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    move-object/from16 v16, v6

    goto/16 :goto_3

    .line 2727
    :cond_5
    if-eqz v5, :cond_9

    .line 2728
    invoke-virtual {v5, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 2729
    .local v12, "subVuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const-string v13, "VuiEngine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "buildElement:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    if-eqz v12, :cond_7

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 2731
    if-eqz v7, :cond_6

    .line 2732
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 2734
    :cond_6
    iget-object v13, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2753
    :goto_1
    move-object/from16 v16, v6

    goto :goto_2

    .line 2736
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v13

    .line 2737
    .local v13, "subInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v13, :cond_9

    if-eqz v7, :cond_9

    .line 2738
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2739
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    goto :goto_1

    .line 2741
    :cond_8
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    move-result v14

    .line 2742
    .local v14, "subState":I
    sget-object v15, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v15}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v15

    if-ne v8, v15, :cond_9

    .line 2743
    const-string v15, "VuiEngine"

    move-object/from16 v16, v6

    const-string v6, "build subScene"

    .end local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .local v16, "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    invoke-static {v15, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    .line 2745
    .local v6, "subListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-eqz v6, :cond_a

    .line 2746
    invoke-interface {v6}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .end local v6    # "subListener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .end local v12    # "subVuiElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v13    # "subInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v14    # "subState":I
    goto :goto_2

    .line 2753
    .end local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .local v6, "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    :cond_9
    move-object/from16 v16, v6

    .end local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    :cond_a
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v10, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    .end local v10    # "subSceneId":Ljava/lang/String;
    .end local v11    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "i":I
    .local v11, "i":I
    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 2756
    .end local v11    # "i":I
    .end local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    :cond_b
    move-object/from16 v16, v6

    .end local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-virtual {v6, v0, v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V

    .line 2757
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2758
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6, v7, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    goto :goto_4

    .line 2761
    .end local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    :cond_c
    move-object/from16 v16, v6

    .end local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6, v7, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    .line 2802
    :cond_d
    :goto_4
    move-object/from16 v23, v5

    goto/16 :goto_8

    .line 2764
    .end local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    :cond_e
    move-object/from16 v16, v6

    .end local v6    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .restart local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    const/4 v6, 0x0

    .line 2765
    .local v6, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_f

    .line 2766
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v10

    move-object v6, v10

    .line 2768
    :cond_f
    if-eqz v6, :cond_14

    .line 2769
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 2770
    .local v10, "size":I
    move-object v12, v2

    const/4 v2, 0x0

    .local v2, "i":I
    .local v12, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :goto_5
    if-ge v2, v10, :cond_13

    .line 2771
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2772
    .local v13, "wholeSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v14

    .line 2773
    .local v14, "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2774
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v15, v15, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v11, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2775
    invoke-static {v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v21

    iget-object v11, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v22

    .line 2774
    move-object/from16 v17, v13

    move-wide/from16 v18, v3

    move/from16 v20, v15

    invoke-static/range {v17 .. v22}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v11

    .line 2776
    .end local v12    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v11, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    iget-object v12, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v11, v12}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2777
    invoke-virtual {v14, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 2778
    invoke-virtual {v14, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2779
    iget-object v12, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-static {v12, v13, v5, v15}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 2780
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v12

    invoke-virtual {v12, v9, v9, v11}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2781
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v12

    invoke-virtual {v12, v9, v9, v11}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2770
    move-object/from16 v23, v5

    move-object v12, v11

    .end local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v11    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v13    # "wholeSceneId":Ljava/lang/String;
    .end local v14    # "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v12    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v23, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :cond_10
    const/4 v15, 0x0

    goto :goto_6

    .line 2782
    .end local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v13    # "wholeSceneId":Ljava/lang/String;
    .restart local v14    # "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_11
    if-eqz v14, :cond_12

    .line 2783
    invoke-virtual {v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v11

    if-nez v11, :cond_12

    .line 2784
    invoke-virtual {v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 2785
    iget-object v11, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-static {v11, v13, v5, v15}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 2786
    .local v11, "wholeElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 2787
    invoke-virtual {v14, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 2788
    invoke-virtual {v14, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2789
    const-string v15, "VuiEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v5

    const-string v5, " full scene build completed "

    .end local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    invoke-static {v13}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2791
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v21

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v13

    move-wide/from16 v18, v3

    move/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v5

    .line 2792
    .end local v12    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v5, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v5, v11}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2793
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v15, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2794
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v9

    invoke-virtual {v9, v15, v15, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2770
    .end local v11    # "wholeElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v13    # "wholeSceneId":Ljava/lang/String;
    .end local v14    # "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    move-object v12, v5

    goto :goto_6

    .end local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .local v5, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v12    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_12
    move-object/from16 v23, v5

    const/4 v15, 0x0

    .end local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v23

    const/4 v9, 0x1

    goto/16 :goto_5

    .line 2802
    .end local v2    # "i":I
    .end local v6    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "size":I
    .end local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :cond_13
    move-object/from16 v23, v5

    move-object v2, v12

    .end local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v12    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v2, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :goto_7
    goto :goto_8

    .end local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :cond_14
    move-object/from16 v23, v5

    goto :goto_7

    .end local v5    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :goto_8
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    iget-boolean v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    invoke-virtual {v5, v0, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setIsWholeScene(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    .end local v0    # "newSceneId":Ljava/lang/String;
    .end local v2    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v3    # "time":J
    .end local v7    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v8    # "state":I
    .end local v16    # "testbuildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;
    .end local v23    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    goto :goto_9

    .line 2803
    :catch_0
    move-exception v0

    .line 2806
    :goto_9
    return-void
.end method
