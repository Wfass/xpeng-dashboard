.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElements(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$displayLocation:Ljava/lang/String;

.field final synthetic val$elements:Ljava/util/List;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2944
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .line 2948
    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2949
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2950
    return-void

    .line 2952
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2953
    .local v3, "time":J
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v2

    move-object v11, v2

    .line 2954
    .local v11, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v11, :cond_1

    return-void

    .line 2955
    :cond_1
    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 2956
    .local v2, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v5

    move-object v12, v5

    .line 2957
    .local v12, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v12, :cond_d

    .line 2958
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    .line 2959
    .local v13, "resultElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 2960
    iget-object v7, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 2961
    .local v7, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v0, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v8

    .line 2962
    .local v8, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v8, :cond_2

    invoke-virtual {v8, v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2963
    :cond_2
    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 2964
    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 2966
    :cond_3
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2959
    .end local v7    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v8    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2969
    .end local v6    # "i":I
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    return-void

    .line 2970
    :cond_6
    invoke-virtual {v2, v13}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2971
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v12, v0, v13, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v6

    move-object v14, v6

    .line 2974
    .local v14, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v12, v0, v14}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2975
    invoke-virtual {v11}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v6

    const/4 v15, 0x1

    if-eqz v6, :cond_8

    .line 2976
    const-string v5, "user"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v5

    sget v6, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v5, v6, :cond_7

    .line 2977
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v8, v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2978
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v10

    .line 2977
    move-object v5, v0

    move-wide v6, v3

    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v5

    .line 2979
    .local v5, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v5, v14}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2980
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 2981
    const-string v6, "VuiEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSceneTask full_scene_info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    .end local v5    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v15, v15, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2984
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v5

    invoke-virtual {v5, v15, v15, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_3

    .line 2986
    :cond_8
    if-eqz v12, :cond_9

    .line 2987
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-virtual {v12, v0, v6, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v6

    .line 2988
    .local v6, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v12, v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2990
    .end local v6    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_9
    invoke-virtual {v11}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v6

    .line 2991
    .local v6, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_a

    move v7, v5

    goto :goto_1

    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2992
    .local v7, "size":I
    :goto_1
    if-lez v7, :cond_d

    .line 2993
    iget-object v8, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v8, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 2994
    .local v8, "activeScene":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2995
    const-string v9, "VuiEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScene wholeSceneIds:"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2997
    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v20

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v21

    .line 2996
    move-object/from16 v16, v8

    move-wide/from16 v17, v3

    move/from16 v19, v5

    invoke-static/range {v16 .. v21}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v5

    move-object v2, v5

    .line 2998
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2999
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 3000
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-static {v5, v8, v12, v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 3001
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v15, v15, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 3002
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v5

    invoke-virtual {v5, v15, v15, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 3005
    :cond_b
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v5, v22

    .end local v22    # "i":I
    .local v5, "i":I
    if-ge v5, v7, :cond_d

    .line 3006
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3007
    .local v9, "wholeSceneId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 3008
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v10, v10, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 3009
    invoke-static {v15}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v20

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v15}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v21

    .line 3008
    move-object/from16 v16, v9

    move-wide/from16 v17, v3

    move/from16 v19, v10

    invoke-static/range {v16 .. v21}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v10

    move-object v2, v10

    .line 3010
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-virtual {v2, v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 3011
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 3012
    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-static {v10, v9, v12, v15}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 3013
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v10

    const/4 v15, 0x1

    invoke-virtual {v10, v15, v15, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 3014
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v10

    invoke-virtual {v10, v15, v15, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3005
    .end local v9    # "wholeSceneId":Ljava/lang/String;
    :cond_c
    add-int/lit8 v22, v5, 0x1

    .end local v5    # "i":I
    .restart local v22    # "i":I
    goto :goto_2

    .line 3023
    .end local v0    # "newSceneId":Ljava/lang/String;
    .end local v2    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v3    # "time":J
    .end local v6    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "size":I
    .end local v8    # "activeScene":Ljava/lang/String;
    .end local v11    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v12    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v13    # "resultElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v14    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v22    # "i":I
    :cond_d
    :goto_3
    goto :goto_4

    .line 3021
    :catch_0
    move-exception v0

    .line 3022
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v2, "VuiEngine"

    const-string v3, "setUpdateElements exception"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3025
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method
