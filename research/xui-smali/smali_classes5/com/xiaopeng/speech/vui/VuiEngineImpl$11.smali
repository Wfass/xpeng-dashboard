.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->setUpdateElementValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$elementId:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1095
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$elementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1098
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    return-void

    .line 1102
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 1103
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v8

    .line 1104
    .local v8, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v8, :cond_2

    .line 1105
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newSceneId\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0celementId\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$elementId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1106
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$elementId:Ljava/lang/String;

    invoke-virtual {v8, v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v9

    .line 1107
    .local v9, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetElement\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    if-eqz v9, :cond_2

    .line 1109
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->val$value:Ljava/lang/Object;

    invoke-virtual {v9, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1110
    const-string v2, "VuiEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "targetElement\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1111
    const/4 v10, 0x1

    new-array v2, v10, [Lcom/xiaopeng/vui/commons/model/VuiElement;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 1112
    .local v11, "resultElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const-string v2, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultElement\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v1, v11}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1114
    invoke-virtual {v8, v0, v11, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v12

    .line 1115
    .local v12, "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v8, v0, v12}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1116
    const-string v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v2

    sget v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v2, v3, :cond_1

    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v5, v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene:Z

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$11;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$500(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 1118
    .local v2, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v2, v12}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1119
    const-string v3, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSceneTask full_scene_info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .end local v2    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v10, v10, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 1124
    .end local v9    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v11    # "resultElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v12    # "fusionElement":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_2
    return-void
.end method
