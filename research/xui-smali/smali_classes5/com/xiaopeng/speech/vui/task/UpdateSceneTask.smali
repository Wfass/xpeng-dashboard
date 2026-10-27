.class public Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "UpdateSceneTask.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private allIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bizIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ">;"
        }
    .end annotation
.end field

.field private elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation
.end field

.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

.field private isRecyclerView:Z

.field private mainThreadSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sceneId:Ljava/lang/String;

.field private time:J

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

.field private vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

.field private vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V
    .locals 3
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 41
    const-string v0, "VuiEngine_UpdateSceneTask"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->bizIds:Ljava/util/List;

    .line 47
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->allIdList:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->idList:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 69
    const-string v0, "MainMusicConcentration"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->mainThreadSceneList:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 57
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->viewList:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getCustomizeIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->ids:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementListener()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->callback:Ljava/lang/ref/SoftReference;

    .line 62
    return-void
.end method

.method private buildUpdateView(Ljava/lang/ref/SoftReference;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v15, p0

    .line 189
    move-object/from16 v14, p1

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->ids:Ljava/util/List;

    iget-object v4, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->callback:Ljava/lang/ref/SoftReference;

    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->idList:Ljava/util/List;

    iget-wide v6, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    iget-object v8, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->allIdList:Ljava/util/List;

    iget-object v9, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->bizIds:Ljava/util/List;

    const/16 v16, 0x0

    if-eqz v14, :cond_0

    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_0
    move/from16 v12, v16

    :goto_0
    iget-boolean v13, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    iget-boolean v0, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 189
    :goto_1
    move-object/from16 v17, v0

    goto :goto_2

    .line 191
    :cond_1
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    goto :goto_1

    .line 189
    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v15

    move-object v1, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 193
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 194
    iget-wide v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 196
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v15, v2, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 197
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 198
    .local v1, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 202
    :cond_2
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    const-string v4, "updateScene element same"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 211
    :cond_3
    iget-boolean v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    iget-object v4, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-direct {v15, v2, v3, v4}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isAddToScene(Ljava/lang/ref/SoftReference;ZLcom/xiaopeng/speech/vui/model/VuiSceneInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto :goto_3

    .line 215
    :cond_4
    move-object/from16 v2, p1

    .local v16, "i":I
    :cond_5
    :goto_3
    move/from16 v1, v16

    .end local v16    # "i":I
    .local v1, "i":I
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 216
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 217
    .local v3, "curElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    iget-object v4, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v4

    .line 218
    .local v4, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v4, :cond_6

    invoke-virtual {v3, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 219
    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 221
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 223
    .end local v1    # "i":I
    .end local v3    # "curElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v4    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v16    # "i":I
    :goto_4
    move/from16 v16, v1

    goto :goto_3

    .line 224
    .end local v16    # "i":I
    :cond_7
    return-void
.end method

.method private handleUpdateElement()V
    .locals 10

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 240
    const/4 v0, 0x1

    .line 242
    .local v0, "isWholeScene":Z
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 246
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v0

    .line 255
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->allIdList:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 257
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_1

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneDebug]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScene completed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    const-string v2, "\u53d6\u6d88\u5f53\u524d\u4efb\u52a1"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 266
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    .line 267
    .local v1, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 268
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, v3, v1, v4}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 269
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3, v2, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v3, v2, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_2

    .line 273
    :cond_3
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 274
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v1, v4, v5, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    .line 275
    .local v4, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 277
    .end local v4    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_4
    const/4 v4, 0x0

    .line 278
    .local v4, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v5, :cond_5

    .line 279
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v4

    .line 281
    :cond_5
    if-nez v4, :cond_6

    move v5, v3

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 282
    .local v5, "size":I
    :goto_0
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateScene wholeSceneIds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-lez v5, :cond_9

    .line 284
    invoke-virtual {p0, v4}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "mActiveSceneId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 286
    iget-wide v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    invoke-virtual {p0, v6, v7, v8}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v7

    iput-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 287
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 288
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, v6, v1, v7}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 289
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7, v2, v2, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 290
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v7, v2, v2, v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 293
    :cond_7
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_9

    .line 294
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    .local v7, "wholeSceneId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 296
    iget-wide v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    invoke-virtual {p0, v7, v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v8

    iput-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 297
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 298
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, v7, v1, v8}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 299
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v8, v2, v2, v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 300
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v8, v2, v2, v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 293
    .end local v7    # "wholeSceneId":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    .end local v0    # "isWholeScene":Z
    .end local v1    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v3    # "i":I
    .end local v4    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "size":I
    .end local v6    # "mActiveSceneId":Ljava/lang/String;
    :cond_9
    :goto_2
    return-void
.end method

.method private isAddToScene(Ljava/lang/ref/SoftReference;ZLcom/xiaopeng/speech/vui/model/VuiSceneInfo;)Z
    .locals 5
    .param p2, "isRecyclerView"    # Z
    .param p3, "vuiSceneInfo"    # Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;Z",
            "Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;",
            ")Z"
        }
    .end annotation

    .line 159
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 160
    :cond_0
    invoke-virtual {p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "rootView":Landroid/view/View;
    const-string v2, "com.xiaopeng.musicradio"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerViewChild(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "isRecyclerView,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",rootView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",ignore addToScene"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v2

    .line 167
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerViewChild(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "isRecyclerView,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",rootView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",ignore addToScene"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return v2

    .line 172
    :cond_2
    return v0

    .line 159
    .end local v1    # "rootView":Landroid/view/View;
    :cond_3
    :goto_0
    return v0
.end method

.method private isNeedUpdate(Ljava/lang/ref/SoftReference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 142
    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 152
    const/4 v0, 0x0

    return v0

    .line 155
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_1
    return v0

    .line 142
    :cond_2
    :goto_0
    return v0
.end method

.method private isRecyclerViewChild(Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rootView"    # Landroid/view/View;

    .line 176
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_1
    if-ne p1, p2, :cond_2

    .line 183
    return v0

    .line 185
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerViewChild(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0

    .line 177
    :cond_3
    :goto_0
    return v0
.end method

.method private setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V
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
            ">;)V"
        }
    .end annotation

    .line 227
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz p2, :cond_0

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 230
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_0

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 232
    .local v1, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 233
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSceneTask full_scene_info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v1    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_0
    return-void
.end method

.method private updateSceneByElement()V
    .locals 7

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->viewList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 74
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    return-void

    .line 77
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->time:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->allIdList:Ljava/util/List;

    .line 80
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 81
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-nez v0, :cond_4

    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->viewList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    .local v0, "size":I
    if-nez v0, :cond_5

    return-void

    .line 87
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    .line 88
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->viewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 89
    .local v3, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-direct {p0, v3}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isNeedUpdate(Ljava/lang/ref/SoftReference;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 90
    goto :goto_1

    .line 92
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_7

    .line 93
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    .line 95
    :cond_7
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateScene updateView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",sceneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v3}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    .line 87
    .end local v3    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_8
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->handleUpdateElement()V

    .line 99
    .end local v0    # "size":I
    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_d

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScene updateView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",sceneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isNeedUpdate(Ljava/lang/ref/SoftReference;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 102
    return-void

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    .line 105
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    .line 107
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->sceneId:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "sceneName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->isRecyclerView:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->mainThreadSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->handleUpdateElement()V

    goto :goto_2

    .line 121
    :cond_c
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->handleUpdateElement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "sceneName":Ljava/lang/String;
    :cond_d
    :goto_2
    goto :goto_3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->TAG:Ljava/lang/String;

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

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
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

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 137
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateSceneTask;->updateSceneByElement()V

    .line 67
    return-void
.end method
