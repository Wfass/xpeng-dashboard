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
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 68
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    .line 59
    const-string v0, "VuiEngine_BuildSceneTask"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    .line 62
    const-string v1, "MainNetRadioConcentration"

    const-string v2, "MainProgramEditorChoice"

    const-string v3, "MainMusicConcentration"

    const-string v4, "MainMineCollect"

    const-string v5, "MainMineHistory"

    const-string v6, "MainMineVip"

    const-string v7, "MainMinePlaylist"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mainThreadSceneList:Ljava/util/List;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->bizIds:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

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

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/task/BuildSceneTask;
    .param p1, "x1"    # J

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/vui/task/BuildSceneTask;
    .param p1, "x1"    # J

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V

    return-void
.end method

.method private addVuiElementChangedListener()V
    .locals 7

    .line 175
    const-string v0, "com.android.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.xiaopeng.systemui"

    .line 176
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    if-nez v0, :cond_1

    .line 180
    return-void

    .line 182
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 183
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 185
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 186
    .local v1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget v3, Lcom/xiaopeng/speech/vui/vuiengine/R$id;->vuiElementId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 187
    .local v2, "tag":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v3, :cond_4

    .line 188
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 189
    .local v3, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiElementId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 190
    invoke-interface {v3, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    invoke-interface {v3, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 193
    .end local v3    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    goto :goto_2

    .line 194
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    instance-of v3, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v3, :cond_5

    .line 195
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 196
    .local v3, "ownerTag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 197
    .local v4, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    if-eqz v3, :cond_5

    const-string v5, "4657"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 198
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    invoke-interface {v4, v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementChangedListener(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V

    .line 202
    .end local v3    # "ownerTag":Ljava/lang/String;
    .end local v4    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 203
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 204
    .local v3, "group":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 205
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 206
    .local v5, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    nop

    .line 207
    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 204
    .end local v5    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 211
    .end local v1    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "group":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    .end local v4    # "i":I
    :cond_6
    goto/16 :goto_0

    .line 212
    :cond_7
    return-void

    .line 177
    .end local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    :cond_8
    :goto_4
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
    .local p1, "buildSubSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 368
    .local v0, "buildSize":I
    if-lez v0, :cond_1

    .line 369
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 370
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    .local v2, "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    .line 372
    .local v3, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-eqz v3, :cond_0

    .line 374
    invoke-interface {v3}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onBuildScene()V

    .line 369
    .end local v2    # "subSceneId":Ljava/lang/String;
    .end local v3    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private buildView(J)V
    .locals 18
    .param p1, "time"    # J

    move-object/from16 v15, p0

    .line 150
    iget-boolean v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-nez v0, :cond_1

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v0, :cond_1

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 152
    .local v0, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v0, :cond_0

    .line 153
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    .line 155
    .end local v0    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :cond_0
    nop

    .line 172
    move-wide/from16 v1, p1

    goto/16 :goto_4

    .line 156
    :cond_1
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findRecyclerView(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    move-result-object v14

    .line 157
    .local v14, "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
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

    if-eqz v0, :cond_2

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    .line 159
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_2

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_2
    move v12, v6

    :goto_0
    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_3

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    .line 160
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v13, v0

    goto :goto_1

    :cond_3
    move v13, v6

    :goto_1
    const/4 v6, 0x0

    if-nez v14, :cond_4

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 157
    move-object/from16 v16, v0

    goto :goto_2

    .line 160
    :cond_4
    nop

    .line 157
    move-object/from16 v16, v6

    :goto_2
    move-object v0, v15

    move-wide/from16 v6, p1

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    .end local v14    # "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v17, "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 162
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 163
    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setVisible(Ljava/lang/Boolean;)V

    .line 165
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    goto :goto_3

    .line 168
    :cond_5
    move-wide/from16 v1, p1

    :goto_3
    move-object/from16 v3, v17

    if-eqz v3, :cond_6

    .end local v17    # "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v3, "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    iget-object v4, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->addVuiElementChangedListener()V

    .line 172
    .end local v0    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v3    # "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method private handleBuildElement(J)V
    .locals 17
    .param p1, "time"    # J

    move-object/from16 v0, p0

    .line 216
    move-wide/from16 v1, p1

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-object v4, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->mIdList:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 217
    iget-object v3, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSubSceneIds()Ljava/util/List;

    move-result-object v3

    .line 219
    .local v3, "subSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, "buildSubSceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    if-eqz v3, :cond_7

    .line 221
    iget-boolean v6, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    .line 224
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 225
    .local v6, "size":I
    move v7, v5

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 227
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 228
    .local v8, "subSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getVuiSceneListener(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v9

    .line 229
    .local v9, "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    if-nez v9, :cond_2

    .line 230
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v10, :cond_1

    .line 231
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 233
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v10

    iget-object v11, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v10, v8, v11}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->initSubSceneInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 235
    :cond_2
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v10

    sget-object v11, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v11}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v10

    .line 236
    .local v10, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v10, :cond_5

    .line 237
    invoke-virtual {v10, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 238
    .local v11, "subElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v11, :cond_4

    .line 239
    iget-object v12, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v12, v7, v11}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 240
    iget-object v12, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v12, :cond_3

    .line 241
    iget-object v12, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 243
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v12

    iget-object v13, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v12, v8, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setWholeSceneId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 245
    :cond_4
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v11    # "subElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_1
    goto :goto_2

    .line 248
    :cond_5
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    .end local v8    # "subSceneId":Ljava/lang/String;
    .end local v9    # "listener":Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .end local v10    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 252
    .end local v7    # "i":I
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V

    .line 255
    .end local v6    # "size":I
    :cond_7
    :goto_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    iget-object v7, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setIsWholeScene(Ljava/lang/String;Z)V

    .line 256
    iget-object v6, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_15

    .line 257
    iget-object v6, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v0, v6, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v6

    .line 258
    .local v6, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    iget-object v7, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 259
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v7

    sget-object v8, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v7

    .line 260
    .local v7, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildScene completed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v10, :cond_8

    const-string v10, "full scene build completed"

    goto :goto_4

    :cond_8
    const-string v10, ""

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v8, :cond_a

    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 265
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {v0, v8, v7, v10}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 266
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v8, :cond_9

    .line 267
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 269
    :cond_9
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v8

    invoke-virtual {v8, v5, v5, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v8

    invoke-virtual {v8, v5, v5, v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto/16 :goto_8

    .line 272
    :cond_a
    iget-boolean v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-nez v8, :cond_c

    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isBuildComplete()Z

    move-result v8

    if-nez v8, :cond_c

    .line 273
    if-eqz v7, :cond_b

    .line 274
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v7, v8, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 276
    :cond_b
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    goto :goto_5

    .line 277
    :cond_c
    iget-boolean v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v8, :cond_d

    .line 278
    iget-object v8, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {v0, v8, v7, v10}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setWholeSceneCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)V

    .line 280
    :cond_d
    :goto_5
    const/4 v8, 0x0

    .line 281
    .local v8, "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v10, :cond_e

    .line 282
    iget-object v10, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v10}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getWholeSceneId()Ljava/util/List;

    move-result-object v8

    .line 284
    :cond_e
    if-eqz v8, :cond_13

    .line 285
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 286
    .local v10, "size":I
    move-object v11, v7

    move-object v7, v6

    move v6, v5

    .local v6, "i":I
    .local v7, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v11, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :goto_6
    if-ge v6, v10, :cond_12

    .line 287
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 288
    .local v12, "wholeSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v13

    sget-object v14, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v14}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v11

    .line 289
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v13

    .line 290
    .local v13, "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 291
    invoke-virtual {v0, v12, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v7

    .line 292
    iget-object v14, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-virtual {v7, v14}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 293
    iget-object v14, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {v0, v12, v11, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    .line 294
    iget-object v14, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string v15, "main scene update"

    invoke-static {v14, v15}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v14

    invoke-virtual {v14, v9, v9, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 296
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v14

    invoke-virtual {v14, v9, v9, v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 286
    .end local v12    # "wholeSceneId":Ljava/lang/String;
    .end local v13    # "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_f
    move v9, v5

    goto :goto_7

    .line 297
    .restart local v12    # "wholeSceneId":Ljava/lang/String;
    .restart local v13    # "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :cond_10
    if-eqz v13, :cond_f

    .line 298
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v14

    if-nez v14, :cond_f

    .line 299
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->updateAddSubSceneNum()V

    .line 300
    iget-object v14, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-direct {v0, v12, v11, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 301
    .local v14, "wholeElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v13}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isFull()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 302
    invoke-virtual {v13, v9}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setBuildComplete(Z)V

    .line 303
    iget-object v15, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " full scene build completed "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {v12}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 305
    invoke-virtual {v0, v12, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v5

    .line 306
    .end local v7    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v5, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v5, v14}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 307
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 308
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v7

    invoke-virtual {v7, v9, v9, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 286
    .end local v12    # "wholeSceneId":Ljava/lang/String;
    .end local v13    # "wholeSceneInfo":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v14    # "wholeElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    move-object v7, v5

    goto :goto_7

    .end local v5    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v7    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_11
    const/4 v9, 0x0

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    const/4 v9, 0x1

    goto/16 :goto_6

    .line 315
    .end local v6    # "i":I
    .end local v10    # "size":I
    :cond_12
    move-object v6, v7

    move-object v7, v11

    .end local v11    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .local v6, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v7, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :cond_13
    invoke-direct {v0, v4}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildSubScenes(Ljava/util/List;)V

    .line 319
    .end local v8    # "wholeSceneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneCallbackHandler()Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 320
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneCallbackHandler()Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/xiaopeng/speech/vui/ISceneCallbackHandler;->onBuildFinished(Lcom/xiaopeng/speech/vui/model/VuiScene;)V

    .line 322
    .end local v6    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v7    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :cond_14
    goto :goto_9

    .line 323
    :cond_15
    iget-boolean v5, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v5, :cond_16

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 324
    invoke-direct {v0, v4}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildSubScenes(Ljava/util/List;)V

    goto :goto_9

    .line 326
    :cond_16
    iget-object v5, v0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string v6, "[VuiSceneErr]\u8bf7\u786e\u8ba4\u6b64\u573a\u666f\u662f\u5426\u5305\u542b\u652f\u6301VUI\u64cd\u4f5c\u7684\u63a7\u4ef6"

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    :goto_9
    return-void
.end method

.method private setSubSceneElementToCache(Ljava/lang/String;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;Ljava/util/List;)Ljava/util/List;
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

    .line 345
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, "wholeElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez v0, :cond_0

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 352
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    return-object v0

    .line 355
    :cond_1
    invoke-static {v0, p3, v1}, Lcom/xiaopeng/speech/vui/utils/SceneMergeUtils;->merge(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 357
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_2

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 360
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VuiSceneDebug]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildScene setSubSceneElementToCache full_scene_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v1    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_2
    return-object v0
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

    .line 333
    .local p3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz p2, :cond_0

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getUpdateFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 335
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {p2, p1, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 336
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v2, :cond_0

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 338
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[VuiSceneDebug]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildScene setWholeSceneCache full_scene_info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v0    # "cache":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v1    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_0
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

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 51
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 29

    .line 79
    move-object/from16 v15, p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v13, v0

    .line 80
    .local v13, "time":J
    iget-boolean v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v0, :cond_0

    iget-object v0, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isActiveSceneId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
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
    .local v0, "sceneName":Ljava/lang/String;
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v1

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->info:Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    const-string v2, "\u8981build\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
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

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v1

    iput-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    .line 97
    :cond_3
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

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

    move-object v11, v1

    .line 101
    .local v11, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    if-eqz v11, :cond_5

    .line 102
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    iget-object v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->wrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getDisplayLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->setDisplayLocation(Ljava/lang/String;Ljava/lang/String;)V

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

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->rootView:Ljava/lang/ref/SoftReference;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->findRecyclerView(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    .line 107
    .local v1, "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v1, :cond_6

    iget-boolean v2, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->isWholeScene:Z

    if-eqz v2, :cond_6

    .line 108
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;

    invoke-direct {v3, v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask$1;-><init>(Lcom/xiaopeng/speech/vui/task/BuildSceneTask;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 116
    :cond_6
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(J)V

    .line 117
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V

    .line 119
    .end local v1    # "recyclerView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :goto_1
    goto/16 :goto_7

    .line 120
    :cond_7
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(J)V

    .line 121
    invoke-direct {v15, v13, v14}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V

    goto/16 :goto_7

    .line 124
    :cond_8
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 125
    const/16 v17, 0x0

    move/from16 v1, v17

    .local v1, "i":I
    :goto_2
    move v10, v1

    .end local v1    # "i":I
    .local v10, "i":I
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_d

    .line 126
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->viewList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    move-object v9, v1

    .line 127
    .local v9, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildScene-------------- sceneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4e2aView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const/16 v18, 0x0

    iget-object v7, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->bizIds:Ljava/util/List;

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz v9, :cond_9

    .line 129
    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_9

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1

    move/from16 v21, v1

    goto :goto_3

    :cond_9
    move/from16 v21, v17

    :goto_3
    if-eqz v9, :cond_a

    .line 130
    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_a

    move/from16 v22, v12

    goto :goto_4

    :cond_a
    move/from16 v22, v17

    :goto_4
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_b

    .line 128
    move-object/from16 v23, v16

    goto :goto_5

    .line 130
    :cond_b
    iget-object v1, v15, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 128
    move-object/from16 v23, v1

    :goto_5
    move-object v1, v15

    move-object v2, v9

    move-object/from16 v24, v7

    move-wide v7, v13

    move-object/from16 v25, v9

    move-object/from16 v9, v18

    .end local v9    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v25, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move/from16 v18, v10

    move-object/from16 v10, v24

    .end local v10    # "i":I
    .local v18, "i":I
    move-object/from16 v24, v11

    move-object/from16 v11, v19

    .end local v11    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .local v24, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    move/from16 v19, v12

    move/from16 v12, v20

    move-wide/from16 v26, v13

    move/from16 v13, v21

    .end local v13    # "time":J
    .local v26, "time":J
    move/from16 v14, v22

    move-object/from16 v15, v23

    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 131
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 132
    move-wide/from16 v2, v26

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .end local v26    # "time":J
    .local v2, "time":J
    move-object/from16 v4, p0

    :try_start_2
    iget-object v5, v4, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->elements:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v25

    invoke-virtual {v4, v6, v5}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v25    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    goto :goto_6

    .line 125
    .end local v2    # "time":J
    .restart local v26    # "time":J
    :cond_c
    move-wide/from16 v2, v26

    move-object/from16 v4, p0

    .end local v26    # "time":J
    .restart local v2    # "time":J
    :goto_6
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "i":I
    .local v1, "i":I
    move-wide v13, v2

    move-object v15, v4

    move/from16 v12, v19

    move-object/from16 v11, v24

    goto/16 :goto_2

    .line 141
    .end local v0    # "sceneName":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "time":J
    .end local v24    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :catch_0
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_9

    .line 138
    .restart local v0    # "sceneName":Ljava/lang/String;
    .restart local v11    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .restart local v13    # "time":J
    :cond_d
    move-object/from16 v24, v11

    move-wide v2, v13

    move-object v4, v15

    .end local v11    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    .end local v13    # "time":J
    .restart local v2    # "time":J
    .restart local v24    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    invoke-direct {v4, v2, v3}, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->handleBuildElement(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0    # "sceneName":Ljava/lang/String;
    .end local v2    # "time":J
    .end local v24    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    goto :goto_8

    .line 141
    :catch_1
    move-exception v0

    goto :goto_9

    .line 143
    :cond_e
    :goto_7
    move-object v4, v15

    :goto_8
    goto :goto_a

    .line 141
    :catch_2
    move-exception v0

    move-object v4, v15

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    iget-object v1, v4, Lcom/xiaopeng/speech/vui/task/BuildSceneTask;->TAG:Ljava/lang/String;

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

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method
