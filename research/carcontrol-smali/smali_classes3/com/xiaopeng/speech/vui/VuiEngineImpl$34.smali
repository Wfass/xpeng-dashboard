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
    .locals 20

    move-object/from16 v0, p0

    .line 2690
    :try_start_0
    iget-object v1, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2691
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneState(Ljava/lang/String;)I

    move-result v2

    .line 2692
    sget-object v3, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->INIT:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "VuiEngine"

    if-ne v2, v3, :cond_0

    .line 2693
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u573a\u666f\u6570\u636e\u7684\u521b\u5efa\u5fc5\u987b\u5728\u573a\u666f\u88ab\u6fc0\u6d3b\u540e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2696
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2697
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v6, v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    move-wide v4, v10

    invoke-static/range {v3 .. v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v3

    .line 2698
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2700
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    if-eqz v8, :cond_1

    .line 2702
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v8, v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2703
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;

    if-eqz v4, :cond_2

    .line 2708
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v4, v1, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2709
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getDisplayLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildTestCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    const/4 v12, 0x1

    if-eqz v4, :cond_3

    .line 2713
    iget-boolean v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    if-nez v5, :cond_3

    .line 2714
    invoke-virtual {v4, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2716
    :cond_3
    iget-boolean v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    if-eqz v5, :cond_c

    .line 2717
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v13, 0x0

    .line 2718
    :goto_0
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_a

    .line 2719
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2720
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_4

    .line 2723
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 2725
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_9

    .line 2728
    invoke-virtual {v8, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2729
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildElement:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_7

    .line 2730
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v4, :cond_6

    .line 2732
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 2734
    :cond_6
    iget-object v7, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2736
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    .line 2738
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuild()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2739
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    goto :goto_1

    .line 2741
    :cond_8
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getState()I

    .line 2742
    sget-object v7, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->ACTIVE:Lcom/xiaopeng/speech/vui/model/VuiSceneState;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/VuiSceneState;->getState()I

    move-result v7

    if-ne v2, v7, :cond_9

    const-string v7, "build subScene"

    .line 2743
    invoke-static {v9, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 2746
    invoke-interface {v6}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 2753
    :cond_9
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2756
    :cond_a
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$subSceneIds:Ljava/util/List;

    invoke-virtual {v2, v1, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v4, :cond_10

    .line 2757
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2758
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    goto/16 :goto_6

    .line 2761
    :cond_b
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    goto/16 :goto_6

    :cond_c
    const/4 v2, 0x0

    if-eqz v4, :cond_d

    .line 2766
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v2

    :cond_d
    move-object v14, v2

    if-eqz v14, :cond_10

    .line 2769
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v15, :cond_10

    .line 2771
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 2772
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 2773
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2774
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v3, v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2775
    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v17

    move-object v2, v6

    move/from16 v18, v3

    move-wide v3, v10

    move-object v13, v5

    move/from16 v5, v18

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    .line 2774
    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 2776
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2777
    invoke-virtual {v13, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 2778
    invoke-virtual {v13, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2779
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    move-object/from16 v5, v19

    invoke-static {v3, v5, v8, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 2780
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v12, v12, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2781
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v12, v12, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_e
    move-object v13, v5

    move-object v5, v6

    move/from16 v16, v7

    if-eqz v13, :cond_f

    .line 2783
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v2

    if-nez v2, :cond_f

    .line 2784
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 2785
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$elements:Ljava/util/List;

    invoke-static {v2, v5, v8, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 2786
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2787
    invoke-virtual {v13, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 2788
    invoke-virtual {v13, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 2789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " full scene build completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2791
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v6, v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v13

    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v17

    move-object v2, v5

    move-wide v3, v10

    move v5, v6

    move-object v6, v13

    move-object v13, v7

    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 2792
    invoke-virtual {v2, v13}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2793
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2794
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v7, v16, 0x1

    goto/16 :goto_3

    .line 2802
    :cond_10
    :goto_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-boolean v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$34;->val$isMainScene:Z

    invoke-virtual {v2, v1, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setIsWholeScene(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
