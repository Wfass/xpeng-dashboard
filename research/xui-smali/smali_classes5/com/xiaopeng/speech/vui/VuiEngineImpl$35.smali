.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2853
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .line 2857
    move-object/from16 v1, p0

    :try_start_0
    const-string v0, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sceneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->val$data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2858
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->val$data:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 2859
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2860
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2861
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2862
    .local v3, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2863
    return-void

    .line 2865
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2866
    .local v5, "time":J
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    move-object v13, v4

    .line 2867
    .local v13, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v13, :cond_1

    return-void

    .line 2868
    :cond_1
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v4

    .line 2869
    .local v4, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v7

    sget-object v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v7

    move-object v14, v7

    .line 2870
    .local v14, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v14, :cond_d

    .line 2871
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v7

    .line 2872
    .local v15, "resultElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 2873
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 2874
    .local v9, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v3, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v10

    .line 2875
    .local v10, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v10, :cond_2

    invoke-virtual {v10, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2876
    :cond_2
    invoke-virtual {v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 2877
    invoke-virtual {v10}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 2879
    :cond_3
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2872
    .end local v9    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v10    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2882
    .end local v8    # "i":I
    :cond_5
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    return-void

    .line 2883
    :cond_6
    invoke-virtual {v4, v15}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2886
    invoke-virtual {v14, v3, v15, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    move-object v12, v8

    .line 2887
    .local v12, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v14, v3, v12}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2888
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v8

    const/4 v11, 0x1

    if-eqz v8, :cond_8

    .line 2889
    const-string v7, "user"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v7

    sget v8, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v7, v8, :cond_7

    .line 2890
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v10, v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v16

    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v17

    move-object v7, v3

    move-wide v8, v5

    move-object/from16 v18, v0

    move v0, v11

    move-object/from16 v11, v16

    .end local v0    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v18, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    move-object v0, v12

    move-object/from16 v12, v17

    .end local v12    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v0, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static/range {v7 .. v12}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v7

    .line 2891
    .local v7, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v7, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2893
    const-string v8, "VuiEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSceneTask full_scene_info"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    goto :goto_1

    .line 2895
    .end local v18    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v12    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_7
    move-object/from16 v18, v0

    move-object v0, v12

    .end local v12    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v0, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v18    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v8, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2896
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v7

    invoke-virtual {v7, v8, v8, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_5

    .line 2898
    .end local v18    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v12    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_8
    move-object/from16 v18, v0

    move-object v0, v12

    .end local v12    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v0, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v18    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v14, :cond_9

    .line 2899
    invoke-virtual {v14, v3, v2, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 2900
    .local v8, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v14, v3, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2902
    .end local v8    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_9
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v8

    .line 2903
    .local v8, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_a

    move v9, v7

    goto :goto_2

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 2904
    .local v9, "size":I
    :goto_2
    if-lez v9, :cond_d

    .line 2905
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v10, v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 2906
    .local v10, "activeScene":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 2907
    const-string v11, "VuiEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateScene wholeSceneIds:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v11, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v23

    iget-object v11, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v11}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v19, v10

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-static/range {v19 .. v24}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v7

    move-object v4, v7

    .line 2909
    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2911
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v7, v10, v14, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 2912
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    const/4 v11, 0x1

    invoke-virtual {v7, v11, v11, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2913
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v7

    invoke-virtual {v7, v11, v11, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2916
    :cond_b
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3
    move/from16 v7, v25

    .end local v25    # "i":I
    .local v7, "i":I
    if-ge v7, v9, :cond_d

    .line 2917
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2918
    .local v11, "wholeSceneId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {v11}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 2919
    iget-object v12, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v12, v12, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2920
    .end local v0    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v26, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v23

    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v24

    .line 2919
    move-object/from16 v19, v11

    move-wide/from16 v20, v5

    move/from16 v22, v12

    invoke-static/range {v19 .. v24}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 2921
    .end local v4    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v0, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2923
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$35;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4, v11, v14, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 2924
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v12, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2925
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v4

    invoke-virtual {v4, v12, v12, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    .end local v11    # "wholeSceneId":Ljava/lang/String;
    move-object v4, v0

    goto :goto_4

    .end local v26    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v0, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v4    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_c
    move-object/from16 v26, v0

    const/4 v12, 0x1

    .end local v0    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v26    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_4
    add-int/lit8 v25, v7, 0x1

    .end local v7    # "i":I
    .restart local v25    # "i":I
    move-object/from16 v0, v26

    goto :goto_3

    .line 2934
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v3    # "newSceneId":Ljava/lang/String;
    .end local v4    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v5    # "time":J
    .end local v8    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "size":I
    .end local v10    # "activeScene":Ljava/lang/String;
    .end local v13    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v14    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v15    # "resultElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v18    # "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v25    # "i":I
    .end local v26    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_d
    :goto_5
    goto :goto_6

    .line 2932
    :catch_0
    move-exception v0

    .line 2933
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2935
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    return-void
.end method
