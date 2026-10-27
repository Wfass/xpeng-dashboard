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
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 39
    const-string v0, "VuiEngine_UpdateSceneTask"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->bizIds:Ljava/util/List;

    .line 45
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 47
    const/4 v1, 0x1

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

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    .line 62
    return-void
.end method

.method private buildUpdateView(Ljava/lang/ref/SoftReference;)V
    .locals 17
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

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "layoutLoadable":Z
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->recyclerView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 121
    .end local v0    # "layoutLoadable":Z
    .local v16, "layoutLoadable":Z
    :cond_0
    move/from16 v16, v0

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

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v12, v16

    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 124
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 125
    iget-wide v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 127
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v15, v2, v1}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 128
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiSceneCache:Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 129
    .local v1, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_3

    .line 130
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/xiaopeng/vui/commons/model/VuiElement;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "oldStr":Ljava/lang/String;
    new-array v3, v3, [Lcom/xiaopeng/vui/commons/model/VuiElement;

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "newStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    const-string v6, "updateScene element same"

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v3    # "newStr":Ljava/lang/String;
    .end local v4    # "oldStr":Ljava/lang/String;
    goto :goto_0

    .line 139
    :cond_2
    move-object/from16 v2, p1

    :cond_3
    :goto_0
    return-void
.end method

.method private handleUpdateElement()V
    .locals 11

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 145
    const/4 v0, 0x1

    .line 146
    .local v0, "isWholeScene":Z
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "updateStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v0

    .line 156
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->allIdList:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 157
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScene completed time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScene:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    const-string v3, "\u53d6\u6d88\u5f53\u524d\u4efb\u52a1"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void

    .line 164
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    .line 165
    .local v2, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 166
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4, v3, v3, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v4, v3, v3, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 168
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-direct {p0, v3, v2, v4}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    goto/16 :goto_2

    .line 170
    :cond_2
    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 171
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v2, v5, v6, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    .line 172
    .local v5, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 174
    .end local v5    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_3
    const/4 v5, 0x0

    .line 175
    .local v5, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v6, :cond_4

    .line 176
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v5

    .line 178
    :cond_4
    if-nez v5, :cond_5

    move v6, v4

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 179
    .local v6, "size":I
    :goto_0
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateScene wholeSceneIds:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    if-lez v6, :cond_8

    .line 181
    invoke-virtual {p0, v5}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getActiveWholeSceneId(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "mActiveSceneId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 183
    iget-wide v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {p0, v7, v8, v9}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v8

    iput-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 184
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 185
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v8, v3, v3, v9}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v8, v3, v3, v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 187
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-direct {p0, v7, v2, v8}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 190
    :cond_6
    nop

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_8

    .line 191
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 192
    .local v8, "wholeSceneId":Ljava/lang/String;
    invoke-static {v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 193
    iget-wide v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->time:J

    invoke-virtual {p0, v8, v9, v10}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v9

    iput-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    .line 194
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 195
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v9, v3, v3, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 196
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->vuiScene:Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v9, v3, v3, v10}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 197
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elements:Ljava/util/List;

    invoke-direct {p0, v8, v2, v9}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 190
    .end local v8    # "wholeSceneId":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 206
    .end local v0    # "isWholeScene":Z
    .end local v1    # "updateStr":Ljava/lang/String;
    .end local v2    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v4    # "i":I
    .end local v5    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "size":I
    .end local v7    # "mActiveSceneId":Ljava/lang/String;
    :cond_8
    :goto_2
    return-void
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

    .line 209
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz p2, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 212
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 214
    .local v1, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 215
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSceneTask build cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v0    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v1    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_0
    return-void
.end method

.method private updateSceneByElement()V
    .locals 6

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

    .line 74
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

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    .local v0, "size":I
    if-nez v0, :cond_5

    return-void

    .line 86
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 87
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->viewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 88
    .local v2, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScene updateView"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    .line 86
    .end local v2    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_6
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->handleUpdateElement()V

    .line 92
    .end local v0    # "size":I
    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScene updateView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateView:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->buildUpdateView(Ljava/lang/ref/SoftReference;)V

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->handleUpdateElement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_8
    :goto_1
    goto :goto_2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->TAG:Ljava/lang/String;

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

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
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

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 109
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/speech/vui/task/UpdateRecyclerItemTask;->updateSceneByElement()V

    .line 67
    return-void
.end method
