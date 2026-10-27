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
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 43
    const-string v0, "VuiEngine_AttributeTask"

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

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    .line 50
    return-void
.end method

.method private buildElement(Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/lang/ref/SoftReference;J)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 18
    .param p1, "vuiSceneCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;J)",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;"
        }
    .end annotation

    .local p2, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 177
    invoke-direct {v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getElementId(Ljava/lang/ref/SoftReference;)Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "elementId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 179
    return-object v11

    .line 181
    :cond_0
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    move-object/from16 v12, p1

    invoke-virtual {v12, v0, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v13

    .line 182
    .local v13, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-nez v13, :cond_1

    .line 183
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    const-string v1, "[VuiSceneTagErr]\u7f13\u5b58\u4e2d\u6ca1\u6709\u6b64\u5143\u7d20"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    return-object v11

    .line 187
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElementListener;

    invoke-interface {v0, v10, v8}, Lcom/xiaopeng/vui/commons/IVuiElementListener;->onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 189
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v0, :cond_2

    .line 190
    return-object v0

    .line 194
    .end local v0    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_2
    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->buildVuiElementAttr(Ljava/lang/ref/SoftReference;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v14

    .line 195
    .local v14, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v14, :cond_a

    if-eqz v9, :cond_a

    .line 196
    invoke-virtual {v14, v10}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setId(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 198
    .local v15, "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    if-nez v15, :cond_3

    return-object v11

    .line 199
    :cond_3
    invoke-interface {v15}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v7

    .line 200
    .local v7, "vuiPropsJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_5

    .line 201
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object v0, v8

    move-object v1, v9

    move-object v2, v14

    move-object v3, v7

    move-wide/from16 v4, p3

    move-object v11, v7

    move/from16 v7, v16

    .end local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    .local v11, "vuiPropsJson":Lorg/json/JSONObject;
    invoke-virtual/range {v0 .. v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->createElementByProps(Ljava/lang/ref/SoftReference;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;JZZ)V

    goto :goto_0

    .line 204
    .end local v11    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    :cond_4
    move-object v11, v7

    .end local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v11    # "vuiPropsJson":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 205
    iget-object v0, v8, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v14, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 210
    .end local v11    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    :cond_5
    move-object v11, v7

    .end local v7    # "vuiPropsJson":Lorg/json/JSONObject;
    .restart local v11    # "vuiPropsJson":Lorg/json/JSONObject;
    :cond_6
    :goto_0
    invoke-virtual {v13}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v13}, Lcom/xiaopeng/vui/commons/model/VuiElement;->isLayoutLoadable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 213
    :cond_7
    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 214
    invoke-virtual {v14, v13}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 215
    iget-object v2, v8, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    const-string v3, "updateScene same"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v2, 0x0

    return-object v2

    .line 218
    :cond_8
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 219
    invoke-virtual {v13}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v13}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 220
    invoke-virtual {v13}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 223
    :cond_9
    return-object v14

    .line 239
    .end local v11    # "vuiPropsJson":Lorg/json/JSONObject;
    .end local v15    # "vuiFriendlyView":Lcom/xiaopeng/vui/commons/IVuiElement;
    :cond_a
    move-wide/from16 v0, p3

    const/4 v2, 0x0

    return-object v2
.end method

.method private getElementId(Ljava/lang/ref/SoftReference;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 152
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

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
    .local v1, "elementId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "4657"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    .end local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 159
    .restart local v2    # "tag":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 165
    .end local v2    # "tag":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 166
    .local v2, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementId()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    const-string v4, "update \u5143\u7d20\u7684\u5c5e\u6027\u65f6\u5fc5\u987b\u662fbuild\u8fc7\u7684\u5143\u7d20"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    return-object v0

    .line 172
    :cond_3
    return-object v1

    .line 163
    .end local v2    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    :cond_4
    return-object v1

    .line 152
    .end local v1    # "elementId":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v0
.end method

.method private setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "buildCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 245
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz p2, :cond_1

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 248
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 250
    .local v1, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VuiSceneTagDebug]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSceneTask scene_info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v1    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_0
    return-object v0

    .line 255
    .end local v0    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateScene()V
    .locals 14

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

    .line 61
    return-void

    .line 63
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, "time":J
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    move-object v8, v2

    .line 65
    .local v8, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 66
    .local v9, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_5

    .line 67
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VuiSceneTagInfo]updateView\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",SceneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v8, v2, v0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->buildElement(Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/lang/ref/SoftReference;J)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    .line 69
    .local v2, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v2, :cond_4

    .line 70
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v2    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_4
    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    if-eqz v2, :cond_7

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 74
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->viewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 75
    .local v3, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-direct {p0, v8, v3, v0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->buildElement(Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/lang/ref/SoftReference;J)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v4

    .line 76
    .local v4, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v4, :cond_6

    .line 77
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v3    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v4    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_7
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 82
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v2

    move-object v10, v2

    .line 83
    .local v10, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v10, v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 84
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v2

    move-object v11, v2

    .line 85
    .local v11, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const/4 v2, 0x1

    .line 86
    .local v2, "isWholeScene":Z
    if-eqz v11, :cond_8

    .line 87
    invoke-virtual {v11}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v3

    move v2, v3

    .line 89
    .end local v2    # "isWholeScene":Z
    .local v12, "isWholeScene":Z
    :cond_8
    move v12, v2

    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    move-object v13, v2

    .line 90
    .local v13, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    const/4 v2, 0x1

    if-eqz v12, :cond_9

    .line 91
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-direct {p0, v3, v13, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 92
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v10}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_2

    .line 95
    :cond_9
    if-eqz v13, :cond_a

    .line 96
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v13, v3, v9, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 97
    .local v2, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v13, v3, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 99
    .end local v2    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_a
    move-object v2, p0

    move-object v3, v11

    move-object v4, v9

    move-wide v5, v0

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateWholeSceneCache(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Ljava/util/List;JLcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "time":J
    .end local v8    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v9    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v10    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v11    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v12    # "isWholeScene":Z
    .end local v13    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :cond_b
    :goto_2
    goto :goto_3

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private updateWholeSceneCache(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Ljava/util/List;JLcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V
    .locals 19
    .param p1, "info"    # Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .param p3, "time"    # J
    .param p5, "buildCache"    # Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;J",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            ")V"
        }
    .end annotation

    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    .line 108
    move-object/from16 v10, p5

    const/4 v0, 0x0

    .line 109
    .local v0, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v0

    .line 112
    .end local v0    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v11, v0

    const/4 v0, 0x0

    if-nez v11, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v12, v1

    .line 113
    .local v12, "size":I
    iget-object v1, v6, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateSceneAttributeTask wholeSceneIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-lez v12, :cond_5

    .line 115
    invoke-virtual {v6, v11}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "mActiveSceneId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v14, 0x1

    if-nez v1, :cond_2

    .line 117
    invoke-virtual {v6, v13, v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 118
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 119
    invoke-direct {v6, v13, v10, v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 120
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v14, v14, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v2

    invoke-virtual {v2, v14, v14, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 124
    .end local v1    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_2
    nop

    .local v0, "i":I
    :goto_1
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v12, :cond_5

    .line 125
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 126
    .local v3, "wholeSceneId":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 127
    invoke-direct {v6, v3, v10, v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 128
    .local v15, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v4

    .line 129
    .local v4, "vuiSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v6, v3, v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 131
    .local v0, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 132
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v14, v14, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 133
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v14, v14, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 134
    .end local v0    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    nop

    .line 124
    move/from16 v18, v5

    goto :goto_2

    .line 134
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    move-object v0, v6

    move-object v1, v4

    move-object v2, v15

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide v3, v8

    .end local v3    # "wholeSceneId":Ljava/lang/String;
    .end local v4    # "vuiSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v16, "wholeSceneId":Ljava/lang/String;
    .local v17, "vuiSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    move/from16 v18, v5

    move-object v5, v10

    .end local v5    # "i":I
    .local v18, "i":I
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateWholeSceneCache(Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;Ljava/util/List;JLcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    .end local v15    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v16    # "wholeSceneId":Ljava/lang/String;
    .end local v17    # "vuiSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    goto :goto_2

    .line 124
    .end local v18    # "i":I
    .restart local v5    # "i":I
    :cond_4
    move/from16 v18, v5

    .end local v5    # "i":I
    .restart local v18    # "i":I
    :goto_2
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .local v0, "i":I
    goto :goto_1

    .line 140
    .end local v0    # "i":I
    .end local v13    # "mActiveSceneId":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method public build(ILandroid/view/View;)Ljava/util/List;
    .locals 1
    .param p1, "fatherElementId"    # I
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->build(ILandroid/view/View;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public build(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "fatherElementId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 148
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneAttributeTask;->updateScene()V

    .line 55
    return-void
.end method
