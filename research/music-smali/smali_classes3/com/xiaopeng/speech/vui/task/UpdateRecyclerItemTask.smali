.class public Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "UpdateRecyclerItemTask.java"


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
            "Lbxt;",
            ">;"
        }
    .end annotation
.end field

.field private elementChangedListener:Lbxs;

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbye;",
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

.field private recyclerView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
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

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    const-string v0, "VuiEngine_UpdateSceneTask"

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->bizIds:Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 45
    iput-wide v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->isRecyclerView:Z

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->allIdList:Ljava/util/List;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->idList:Ljava/util/List;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getCustomizeIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->ids:Ljava/util/List;

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementListener()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->callback:Ljava/lang/ref/SoftReference;

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getRecyclerView()Ljava/lang/ref/SoftReference;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private buildUpdateView(Ljava/lang/ref/SoftReference;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 114
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    const/4 v14, 0x1

    const/16 v16, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lbxq;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    invoke-interface {v0}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v12, v14

    goto :goto_0

    :cond_0
    move/from16 v12, v16

    .line 121
    :goto_0
    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->ids:Ljava/util/List;

    iget-object v4, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->callback:Ljava/lang/ref/SoftReference;

    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->idList:Ljava/util/List;

    iget-wide v6, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    iget-object v8, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->allIdList:Ljava/util/List;

    iget-object v9, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->bizIds:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-boolean v13, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->isRecyclerView:Z

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, v17

    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 125
    iget-wide v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {v0, v1, v2}, Lbye;->setTimestamp(J)V

    .line 127
    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v15, v2, v1}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 128
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 130
    new-array v3, v2, [Lbye;

    aput-object v1, v3, v16

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-array v2, v2, [Lbye;

    aput-object v0, v2, v16

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    :cond_1
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    const-string v1, "updateScene element same"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleUpdateElement()V
    .locals 9

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 156
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->allIdList:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 157
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScene completed time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u53d6\u6d88\u5f53\u524d\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 166
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1, v2, v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v1, v2, v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-direct {p0, v1, v0, v2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 171
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v0, v3, v4, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    const/4 v3, 0x0

    .line 175
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v4, :cond_4

    .line 176
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    move v4, v1

    goto :goto_1

    .line 178
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 179
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateScene wholeSceneIds:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_8

    .line 181
    invoke-virtual {p0, v3}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 183
    iget-wide v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {p0, v5, v6, v7}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 184
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 185
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6, v2, v2, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6, v2, v2, v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 187
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-direct {p0, v5, v0, v6}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    :cond_6
    :goto_2
    if-ge v1, v4, :cond_8

    .line 191
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 193
    iget-wide v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {p0, v5, v6, v7}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 194
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 195
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6, v2, v2, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v6, v2, v2, v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 197
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-direct {p0, v5, v0, v6}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method private setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;",
            "Ljava/util/List<",
            "Lbye;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    .line 211
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result p2

    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt p2, v0, :cond_0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 214
    invoke-virtual {p1, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 215
    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSceneTask build cache"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateSceneByElement()V
    .locals 7

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 73
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 76
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 78
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->allIdList:Ljava/util/List;

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 80
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-nez v0, :cond_4

    return-void

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lbxs;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elementChangedListener:Lbxs;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "updateScene updateView"

    if-eqz v0, :cond_7

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 87
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 88
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v3}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->handleUpdateElement()V

    goto :goto_1

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->handleUpdateElement()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

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

    :cond_8
    :goto_1
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

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public execute()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateSceneByElement()V

    return-void
.end method
