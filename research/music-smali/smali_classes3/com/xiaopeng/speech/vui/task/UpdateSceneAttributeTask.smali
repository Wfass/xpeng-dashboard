.class public Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "UpdateSceneAttributeTask.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private sceneId:Ljava/lang/String;

.field private updateView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    const-string v0, "VuiEngine_AttributeTask"

    .line 43
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 47
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    return-void
.end method

.method private buildElement(Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/lang/ref/SoftReference;J)Lbye;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;J)",
            "Lbye;"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getElementId(Ljava/lang/ref/SoftReference;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object p1

    if-nez p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneTagErr]\u7f13\u5b58\u4e2d\u6ca1\u6709\u6b64\u5143\u7d20"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_1
    if-eqz p2, :cond_2

    .line 187
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxt;

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxt;

    invoke-interface {v1, v0, p0}, Lbxt;->onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 194
    :cond_2
    invoke-virtual {p0, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->buildVuiElementAttr(Ljava/lang/ref/SoftReference;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_9

    .line 196
    invoke-virtual {v1, v0}, Lbye;->setId(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    if-nez v0, :cond_3

    return-object v2

    .line 199
    :cond_3
    invoke-interface {v0}, Lbxq;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 201
    sget-object v0, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lbye;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, v1

    move-wide v7, p3

    .line 202
    invoke-virtual/range {v3 .. v10}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->createElementByProps(Ljava/lang/ref/SoftReference;Lbye;Lorg/json/JSONObject;JZZ)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 205
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {p2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p2}, Lbye;->setProps(Lcom/google/gson/JsonObject;)V

    .line 210
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lbye;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lbye;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    .line 211
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Lbye;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 213
    :cond_6
    invoke-virtual {v1, p3, p4}, Lbye;->setTimestamp(J)V

    .line 214
    invoke-virtual {v1, p1}, Lbye;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    const-string p2, "updateScene same"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 218
    :cond_7
    sget-object p2, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-virtual {p2}, Lbxy;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lbye;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 219
    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 220
    invoke-virtual {p1}, Lbye;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lbye;->setElements(Ljava/util/List;)V

    :cond_8
    return-object v1

    :cond_9
    return-object v2
.end method

.method private getElementId(Ljava/lang/ref/SoftReference;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 152
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-nez v1, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "4657"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 165
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbxq;

    .line 166
    invoke-interface {p1}, Lbxq;->getVuiElementId()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    const-string v1, "update \u5143\u7d20\u7684\u5c5e\u6027\u65f6\u5fc5\u987b\u662fbuild\u8fc7\u7684\u5143\u7d20"

    invoke-static {p1, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object p1

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    return-object v0
.end method

.method private setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    .line 247
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 248
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result p2

    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt p2, v0, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 250
    invoke-virtual {p1, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VuiSceneTagDebug]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSceneTask scene_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateScene()V
    .locals 9

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 60
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 63
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 64
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VuiSceneTagInfo]updateView\uff1a"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",SceneId:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->buildElement(Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/lang/ref/SoftReference;J)Lbye;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 70
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 75
    invoke-direct {p0, v0, v2, v4, v5}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->buildElement(Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/lang/ref/SoftReference;J)Lbye;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 77
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {p0, v0, v4, v5}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz v2, :cond_7

    .line 87
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v6

    goto :goto_2

    :cond_7
    move v6, v1

    .line 89
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v7

    sget-object v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v7

    if-eqz v6, :cond_8

    .line 91
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-direct {p0, v2, v7, v3}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 92
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_9

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v7, v0, v3, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_9
    move-object v1, p0

    move-object v6, v7

    .line 99
    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateWholeSceneCache(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Ljava/util/List;JLcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void
.end method

.method private updateWholeSceneCache(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Ljava/util/List;JLcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;",
            "Ljava/util/List<",
            "Lbye;",
            ">;J",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    const/4 v0, 0x0

    if-nez v11, :cond_1

    move v12, v0

    goto :goto_1

    .line 112
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move v12, v1

    .line 113
    :goto_1
    iget-object v1, v6, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSceneAttributeTask wholeSceneIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v12, :cond_5

    .line 115
    invoke-virtual {p0, v11}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v13, 0x1

    if-nez v2, :cond_2

    .line 117
    invoke-virtual {p0, v1, v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 119
    invoke-direct {p0, v1, v10, v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 120
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13, v13, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v13, v13, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    :cond_2
    move v14, v0

    :goto_2
    if-ge v14, v12, :cond_5

    .line 125
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    invoke-direct {p0, v0, v10, v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 128
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    invoke-virtual {p0, v0, v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 132
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13, v13, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v13, v13, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 134
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateWholeSceneCache(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Ljava/util/List;JLcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public build(ILandroid/view/View;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->build(ILandroid/view/View;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public build(ILjava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lbye;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public execute()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateScene()V

    return-void
.end method
