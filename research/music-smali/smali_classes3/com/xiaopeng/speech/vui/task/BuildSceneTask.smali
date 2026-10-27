.class public Lcom/xiaopeng/speech/vui/task/BuildSceneTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "BuildSceneTask.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bizIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field private info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

.field private isWholeScene:Z

.field private mIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainThreadSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private sceneId:Ljava/lang/String;

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
    .locals 8

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    const-string v0, "VuiEngine_BuildSceneTask"

    .line 59
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    const-string v1, "MainNetRadioConcentration"

    const-string v2, "MainProgramEditorChoice"

    const-string v3, "MainMusicConcentration"

    const-string v4, "MainMineCollect"

    const-string v5, "MainMineHistory"

    const-string v6, "MainMineVip"

    const-string v7, "MainMinePlaylist"

    .line 62
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mainThreadSceneList:Ljava/util/List;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->bizIds:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 70
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    .line 71
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isWholeScene()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V

    return-void
.end method

.method private addVuiElementChangedListener()V
    .locals 5

    .line 175
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 176
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    if-nez v0, :cond_1

    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 185
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 187
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lbxq;

    if-eqz v3, :cond_5

    .line 188
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbxq;

    .line 189
    invoke-interface {v3}, Lbxq;->getVuiElementId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 190
    invoke-interface {v3, v2}, Lbxq;->setVuiElementId(Ljava/lang/String;)V

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    invoke-interface {v3, v2}, Lbxq;->setVuiElementChangedListener(Lbxs;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 194
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v2, v1, Lbxq;

    if-eqz v2, :cond_6

    .line 195
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbxq;

    if-eqz v2, :cond_6

    const-string v4, "4657"

    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    invoke-interface {v3, v2}, Lbxq;->setVuiElementChangedListener(Lbxs;)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 203
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 204
    :goto_2
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 205
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 207
    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method private buildSubScenes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 370
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lbxv;

    move-result-object v3

    .line 372
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 374
    invoke-interface {v3}, Lbxv;->onBuildScene()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildView(J)V
    .locals 18

    move-object/from16 v15, p0

    .line 150
    iget-boolean v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-nez v0, :cond_0

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    goto/16 :goto_3

    .line 156
    :cond_0
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findRecyclerView(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    move-result-object v14

    .line 157
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getCustomizeIds()Ljava/util/List;

    move-result-object v3

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementListener()Ljava/lang/ref/SoftReference;

    move-result-object v4

    iget-object v5, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    const/4 v8, 0x0

    iget-object v9, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->bizIds:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lbxq;

    if-eqz v0, :cond_1

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxq;

    invoke-interface {v0}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_1
    move v12, v6

    :goto_0
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v13, v0

    goto :goto_1

    :cond_2
    move v13, v6

    :goto_1
    const/4 v6, 0x0

    if-nez v14, :cond_3

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    move-object/from16 v16, v0

    goto :goto_2

    :cond_3
    move-object/from16 v16, v6

    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v6, p1

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .line 157
    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v0

    .line 162
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-wide/from16 v1, p1

    .line 163
    invoke-virtual {v0, v1, v2}, Lbye;->setTimestamp(J)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Lbye;->setVisible(Ljava/lang/Boolean;)V

    .line 165
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v1, v0}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, v17

    if-eqz v0, :cond_5

    .line 168
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->addVuiElementChangedListener()V

    :cond_5
    :goto_3
    return-void
.end method

.method private handleBuildElement(J)V
    .locals 12

    .line 216
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSubSceneIds()Ljava/util/List;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 221
    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 224
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_6

    .line 227
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lbxv;

    move-result-object v6

    if-nez v6, :cond_2

    .line 230
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v6, :cond_1

    .line 231
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 233
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v6

    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 237
    invoke-virtual {v6, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 239
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v7, v4, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 240
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v6, :cond_3

    .line 241
    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 243
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 252
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V

    .line 255
    :cond_7
    :goto_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setIsWholeScene(Ljava/lang/String;Z)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 258
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 259
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildScene completed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v6, :cond_8

    const-string v6, "full scene build completed"

    goto :goto_3

    :cond_8
    const-string v6, ""

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object p2, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, p1, v3, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz p1, :cond_9

    .line 267
    invoke-virtual {p1, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 269
    :cond_9
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_7

    .line 272
    :cond_a
    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v3, :cond_b

    .line 274
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v3, v4, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 276
    :cond_b
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v3, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    goto :goto_4

    .line 277
    :cond_c
    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v4, :cond_d

    .line 278
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, v4, v3, v6}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    :cond_d
    :goto_4
    const/4 v3, 0x0

    .line 281
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v4, :cond_e

    .line 282
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_12

    .line 285
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-object v6, v0

    move v0, v2

    :goto_5
    if-ge v0, v4, :cond_11

    .line 287
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v8

    sget-object v9, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v8

    .line 289
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 290
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 291
    invoke-virtual {p0, v7, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v6

    .line 292
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v6, v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 293
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, v7, v8, v9}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 294
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string v8, "main scene update"

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    invoke-virtual {v7, v5, v5, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 296
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v7

    invoke-virtual {v7, v5, v5, v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_6

    :cond_f
    if-eqz v9, :cond_10

    .line 298
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v10

    if-nez v10, :cond_10

    .line 299
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 300
    iget-object v10, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {p0, v7, v8, v10}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 301
    invoke-virtual {v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 302
    invoke-virtual {v9, v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 303
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " full scene build completed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {v7}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 305
    invoke-virtual {p0, v7, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v6

    .line 306
    invoke-virtual {v6, v8}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 307
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    invoke-virtual {v7, v2, v2, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 308
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v7

    invoke-virtual {v7, v2, v2, v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    :cond_10
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_11
    move-object v0, v6

    .line 315
    :cond_12
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildSubScenes(Ljava/util/List;)V

    .line 319
    :goto_7
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneCallbackHandler()Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneCallbackHandler()Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;->onBuildFinished(Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    goto :goto_8

    .line 323
    :cond_13
    iget-boolean p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz p1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_14

    .line 324
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildSubScenes(Ljava/util/List;)V

    goto :goto_8

    .line 326
    :cond_14
    iget-object p1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string p2, "[VuiSceneErr]\u8bf7\u786e\u8ba4\u6b64\u573a\u666f\u662f\u5426\u5305\u542b\u652f\u6301VUI\u64cd\u4f5c\u7684\u63a7\u4ef6"

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    :goto_8
    return-void
.end method

.method private setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
    .locals 3
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

    .line 345
    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v1, 0x0

    .line 352
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 355
    :cond_1
    invoke-static {v0, p3, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    .line 357
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result p2

    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt p2, v0, :cond_2

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 360
    invoke-virtual {p1, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[VuiSceneDebug]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildScene setSubSceneElementToCache full_scene_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p3
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

    .line 334
    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p3

    .line 335
    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 336
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result p2

    sget v0, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt p2, v0, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p1

    .line 338
    invoke-virtual {p1, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[VuiSceneDebug]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildScene setWholeSceneCache full_scene_info:"

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

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public execute()V
    .locals 25

    move-object/from16 v15, p0

    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 80
    iget-boolean v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v0, :cond_0

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VuiSceneTag]buildScene-------------- sceneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    const/16 v16, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    .line 84
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object/from16 v2, v16

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",viewList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    iput-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 88
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v12, 0x1

    add-int/2addr v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getListener()Lbxv;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lbxv;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getListener()Lbxv;

    move-result-object v1

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lbxv;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u8981build\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_2
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v1, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuild(Z)V

    .line 95
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lbxs;

    move-result-object v1

    iput-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    .line 97
    :cond_3
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;

    if-nez v1, :cond_4

    .line 98
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string v2, "[VuiSceneWarn]elementChangedListener is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    if-eqz v1, :cond_5

    .line 102
    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getDisplayLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_5
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_8

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 105
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mainThreadSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findRecyclerView(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 107
    iget-boolean v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v0, :cond_6

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;

    invoke-direct {v1, v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;-><init>(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 116
    :cond_6
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(J)V

    .line 117
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V

    goto/16 :goto_6

    .line 120
    :cond_7
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(J)V

    .line 121
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V

    goto/16 :goto_6

    .line 124
    :cond_8
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    if-eqz v0, :cond_e

    const/4 v11, 0x0

    .line 125
    :goto_1
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_d

    .line 126
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/ref/SoftReference;

    .line 127
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildScene-------------- sceneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e2aView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getCustomizeIds()Ljava/util/List;

    move-result-object v4

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getElementListener()Ljava/lang/ref/SoftReference;

    move-result-object v5

    iget-object v6, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    const/4 v9, 0x0

    iget-object v7, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->bizIds:Ljava/util/List;

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v10, :cond_9

    .line 129
    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-eqz v1, :cond_9

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxq;

    invoke-interface {v1}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v1

    move/from16 v19, v1

    goto :goto_2

    :cond_9
    const/16 v19, 0x0

    :goto_2
    if-eqz v10, :cond_a

    .line 130
    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    move/from16 v20, v12

    goto :goto_3

    :cond_a
    const/16 v20, 0x0

    :goto_3
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_b

    move-object/from16 v21, v16

    goto :goto_4

    :cond_b
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lbxs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v21, v1

    :goto_4
    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v22, v7

    move-wide v7, v13

    move-object v0, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move-object/from16 v11, v17

    move/from16 v17, v12

    move/from16 v12, v18

    move-wide/from16 v23, v13

    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v21

    .line 128
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 131
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    move-wide/from16 v2, v23

    .line 132
    invoke-virtual {v1, v2, v3}, Lbye;->setTimestamp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v4, p0

    .line 133
    :try_start_2
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object/from16 v4, p0

    move-wide/from16 v2, v23

    :goto_5
    add-int/lit8 v11, v22, 0x1

    move-wide v13, v2

    move-object v15, v4

    move/from16 v12, v17

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_7

    :cond_d
    move-wide v2, v13

    move-object v4, v15

    .line 138
    invoke-direct {v4, v2, v3}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_e
    :goto_6
    move-object v4, v15

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v4, v15

    .line 142
    :goto_7
    iget-object v1, v4, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

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

    :goto_8
    return-void
.end method
