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
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "VuiEngine"

    .line 2948
    :try_start_0
    iget-object v2, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2949
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2952
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2953
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 2955
    :cond_1
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v2

    move-wide v5, v10

    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v12

    .line 2956
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 2958
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    move v5, v14

    .line 2959
    :goto_0
    iget-object v6, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2960
    iget-object v6, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 2961
    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v2, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2962
    invoke-virtual {v7, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2963
    :cond_2
    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2964
    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 2966
    :cond_3
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2969
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    .line 2970
    :cond_6
    invoke-virtual {v12, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2971
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v12, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v13, v2, v4, v14}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v15

    .line 2974
    invoke-virtual {v13, v2, v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2975
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v4

    const/4 v9, 0x1

    if-eqz v4, :cond_8

    const-string v3, "user"

    .line 2976
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v3

    sget v4, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v3, v4, :cond_7

    .line 2977
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2978
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-wide v5, v10

    move v2, v9

    move-object v9, v3

    .line 2977
    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v3

    .line 2979
    invoke-virtual {v3, v15}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2980
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 2981
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSceneTask full_scene_info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v2, v9

    .line 2983
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v12}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 2984
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v12}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_4

    :cond_8
    move v12, v9

    if-eqz v13, :cond_9

    .line 2987
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-virtual {v13, v2, v4, v14}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 2988
    invoke-virtual {v13, v2, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 2990
    :cond_9
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    move v3, v14

    goto :goto_2

    .line 2991
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-lez v3, :cond_d

    .line 2993
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 2994
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScene wholeSceneIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2997
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v15

    move-wide v5, v10

    .line 2996
    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v4

    .line 2998
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 2999
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 3000
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v6, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-static {v5, v15, v13, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 3001
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v12, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 3002
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v5

    invoke-virtual {v5, v12, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    :cond_b
    :goto_3
    if-ge v14, v3, :cond_d

    .line 3006
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 3007
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v15}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3008
    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 3009
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v15

    move-wide v5, v10

    .line 3008
    invoke-static/range {v4 .. v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v4

    .line 3010
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 3011
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$displayLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setDisplayLocation(Ljava/lang/String;)V

    .line 3012
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v6, v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$36;->val$elements:Ljava/util/List;

    invoke-static {v5, v15, v13, v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$2800(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 3013
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    invoke-virtual {v5, v12, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 3014
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v5

    invoke-virtual {v5, v12, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :catchall_0
    const-string v2, "setUpdateElements exception"

    .line 3022
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-void
.end method
