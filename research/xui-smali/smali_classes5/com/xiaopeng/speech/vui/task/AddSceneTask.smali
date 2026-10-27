.class public Lcom/xiaopeng/speech/vui/task/AddSceneTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "AddSceneTask.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V
    .locals 1
    .param p1, "viewWrapper"    # Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    .line 32
    const-string v0, "VuiEngine_AddSceneTask"

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    .line 36
    return-void
.end method

.method private addNotChildViewToScene(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)V
    .locals 41
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            ")V"
        }
    .end annotation

    .local p1, "viewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 51
    if-eqz v14, :cond_14

    if-nez v13, :cond_0

    goto/16 :goto_e

    .line 52
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    return-void

    .line 55
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v6, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v11, v0

    .line 57
    .local v11, "time":J
    invoke-virtual {v15, v13, v11, v12}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 58
    .local v0, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 59
    .local v7, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 60
    .local v9, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v10, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v1

    .line 63
    .local v8, "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    move-object v5, v1

    .line 64
    .local v5, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v5, :cond_2

    return-void

    .line 65
    :cond_2
    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v1

    move-object/from16 v16, v1

    .line 66
    .local v16, "elementChangedListener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setContainNotChildrenView(Z)V

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "isRecyclerView":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    .line 69
    .local v3, "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v2

    move-object v4, v2

    .line 70
    .local v4, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    move/from16 v17, v1

    const/4 v1, 0x0

    .local v1, "i":I
    .local v17, "isRecyclerView":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 71
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 72
    .local v2, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v2, :cond_9

    move/from16 v19, v1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "i":I
    .local v19, "i":I
    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v1, :cond_3

    .line 73
    nop

    .line 70
    move-object/from16 v28, v0

    move-object v0, v4

    move-object/from16 v29, v5

    move-object v14, v8

    move-object v8, v13

    move-object v5, v15

    move-wide/from16 v39, v11

    move-object v12, v3

    move-object v11, v7

    move-wide/from16 v2, v39

    goto/16 :goto_4

    .line 75
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    .line 76
    const/4 v1, 0x1

    .line 78
    .end local v17    # "isRecyclerView":Z
    .local v1, "isRecyclerView":Z
    move/from16 v17, v1

    .end local v1    # "isRecyclerView":Z
    .restart local v17    # "isRecyclerView":Z
    :cond_4
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v2, :cond_5

    .line 80
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v24, v1

    goto :goto_1

    :cond_5
    const/16 v24, 0x0

    :goto_1
    if-eqz v17, :cond_6

    const/4 v1, 0x0

    .line 78
    move-object/from16 v25, v1

    goto :goto_2

    :cond_6
    move-object/from16 v25, v16

    :goto_2
    move-object v1, v15

    move-object/from16 v26, v2

    .end local v2    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v26, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v27, v3

    move-object v3, v7

    .end local v3    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v27, "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    move-object/from16 v28, v0

    move-object v0, v4

    move-object/from16 v4, v20

    .end local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .local v0, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .local v28, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    move-object/from16 v29, v5

    move-object/from16 v5, v21

    .end local v5    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v29, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-wide v7, v11

    .end local v7    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v8    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v31, "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide/from16 v32, v11

    move-object/from16 v11, v22

    .end local v11    # "time":J
    .local v32, "time":J
    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v14, v17

    move-object/from16 v15, v25

    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 82
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 83
    move-wide/from16 v2, v32

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 84
    .end local v32    # "time":J
    .local v2, "time":J
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, v26

    move-object/from16 v5, p0

    :try_start_2
    invoke-virtual {v5, v7, v4}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 85
    .end local v26    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .local v7, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v8, p2

    :try_start_3
    invoke-virtual {v0, v8, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v4

    .line 86
    .local v4, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v4, :cond_7

    .line 87
    invoke-virtual {v1, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 88
    nop

    .line 70
    move-object/from16 v12, v27

    move-object/from16 v11, v30

    move-object/from16 v14, v31

    goto :goto_4

    .line 92
    :cond_7
    move-object/from16 v11, v30

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v30    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v11, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    move-object/from16 v12, v27

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v27    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v12, "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v31

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v4    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v7    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v31    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 162
    .end local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v2    # "time":J
    .end local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "elementChangedListener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .end local v17    # "isRecyclerView":Z
    .end local v19    # "i":I
    .end local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 70
    .restart local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "elementChangedListener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .restart local v17    # "isRecyclerView":Z
    .restart local v19    # "i":I
    .restart local v27    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v30    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v31    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v32    # "time":J
    :cond_8
    move-object/from16 v12, v27

    move-object/from16 v11, v30

    move-object/from16 v14, v31

    move-wide/from16 v2, v32

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    .end local v27    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v30    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v31    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "time":J
    .restart local v2    # "time":J
    .restart local v11    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 162
    .end local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v2    # "time":J
    .end local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "elementChangedListener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .end local v17    # "isRecyclerView":Z
    .end local v19    # "i":I
    .end local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_3
    move-object/from16 v8, p2

    goto/16 :goto_c

    .line 70
    .local v0, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v1, "i":I
    .restart local v3    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .local v4, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v5    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v8    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "time":J
    .restart local v16    # "elementChangedListener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .restart local v17    # "isRecyclerView":Z
    :cond_9
    move-object/from16 v28, v0

    move/from16 v19, v1

    move-object v0, v4

    move-object/from16 v29, v5

    move-object v14, v8

    move-object v8, v13

    move-object v5, v15

    move-wide/from16 v39, v11

    move-object v12, v3

    move-object v11, v7

    move-wide/from16 v2, v39

    .end local v1    # "i":I
    .end local v3    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v5    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v7    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v8    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v2    # "time":J
    .local v11, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "i":I
    .restart local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    :goto_4
    add-int/lit8 v1, v19, 0x1

    .end local v19    # "i":I
    .restart local v1    # "i":I
    move-object v4, v0

    move-object v15, v5

    move-object v13, v8

    move-object v7, v11

    move-object v8, v14

    move-object/from16 v0, v28

    move-object/from16 v5, v29

    move-object/from16 v14, p1

    move-wide/from16 v39, v2

    move-object v3, v12

    move-wide/from16 v11, v39

    goto/16 :goto_0

    .line 97
    .end local v1    # "i":I
    .end local v2    # "time":J
    .end local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v0, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v3    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v5    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v7    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v8    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "time":J
    :cond_a
    move-object/from16 v28, v0

    move-object v0, v4

    move-object/from16 v29, v5

    move-object v14, v8

    move-object v8, v13

    move-object v5, v15

    move-wide/from16 v39, v11

    move-object v12, v3

    move-object v11, v7

    move-wide/from16 v2, v39

    .end local v3    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v5    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v7    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v8    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v2    # "time":J
    .local v11, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .restart local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .restart local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 98
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 99
    .local v4, "curElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v7

    .line 100
    .local v7, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v7, :cond_b

    invoke-virtual {v4, v7}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 101
    invoke-interface {v11, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 103
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 105
    .end local v4    # "curElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v7    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :goto_6
    goto :goto_5

    .line 106
    .end local v1    # "i":I
    :cond_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 107
    move-object/from16 v1, v28

    invoke-virtual {v1, v11}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 116
    .end local v28    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    const-string v4, "user"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v4

    sget v7, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v4, v7, :cond_d

    .line 117
    iget-object v4, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addNotChildViewToScene completed time:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    sub-long v9, v18, v2

    .end local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v35, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-static {v4, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 121
    .end local v34    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    move-object/from16 v34, v9

    move-object/from16 v35, v10

    .end local v9    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_7
    move-object/from16 v4, v29

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v7

    .end local v29    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v4, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-eqz v7, :cond_12

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v7, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_f

    .line 125
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_8
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_f

    .line 126
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 127
    .local v13, "id":Ljava/lang/String;
    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 128
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v36, v0

    const-string v0, ","

    .end local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .local v36, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    move-wide/from16 v37, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v9, v2, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 130
    .end local v2    # "time":J
    .local v37, "time":J
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v9, v2, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .end local v13    # "id":Ljava/lang/String;
    goto :goto_9

    .line 125
    .end local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v37    # "time":J
    .restart local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v2    # "time":J
    :cond_e
    move-object/from16 v36, v0

    move-wide/from16 v37, v2

    const/4 v2, 0x1

    .end local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v2    # "time":J
    .restart local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v37    # "time":J
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v36

    move-wide/from16 v2, v37

    goto :goto_8

    .line 136
    .end local v10    # "i":I
    .end local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v37    # "time":J
    .restart local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v2    # "time":J
    :cond_f
    move-object/from16 v36, v0

    move-wide/from16 v37, v2

    const/4 v2, 0x1

    .end local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v2    # "time":J
    .restart local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v37    # "time":J
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_10

    .line 137
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_a

    .line 140
    :cond_10
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    .line 141
    .local v0, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v0, :cond_11

    .line 142
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v11, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 143
    .local v3, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-virtual {v0, v8, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 144
    const-string v9, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v9

    sget v10, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v9, v10, :cond_11

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v9

    .line 146
    .local v9, "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-virtual {v9, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 147
    iget-object v10, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addNotChildViewToScene full_scene_info"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v3    # "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v9    # "scene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_11
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 153
    .end local v0    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    :goto_a
    invoke-virtual {v4, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    .line 154
    invoke-virtual {v4, v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 155
    .end local v7    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_b

    .line 156
    .end local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v37    # "time":J
    .local v0, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v2    # "time":J
    :cond_12
    move-object/from16 v36, v0

    move-wide/from16 v37, v2

    const/4 v2, 0x1

    .end local v0    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v2    # "time":J
    .restart local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v37    # "time":J
    invoke-virtual {v4, v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    .line 157
    invoke-virtual {v4, v14}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 158
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 164
    .end local v1    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v4    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v6    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v12    # "notChildViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    .end local v14    # "rootViewIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "elementChangedListener":Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;
    .end local v17    # "isRecyclerView":Z
    .end local v34    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v36    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v37    # "time":J
    :cond_13
    :goto_b
    goto :goto_d

    .line 162
    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v8, v13

    move-object v5, v15

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNotChildViewToScene e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    return-void

    .line 51
    :cond_14
    :goto_e
    move-object v8, v13

    move-object v5, v15

    return-void
.end method


# virtual methods
.method public addSceneElement(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p2, "parentElementId"    # Ljava/lang/String;
    .param p3, "sceneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 255
    move-object/from16 v13, p3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v5, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v0, v14, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v12

    .line 265
    .local v12, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v12, :cond_2

    return-void

    .line 266
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 267
    .local v10, "time":J
    invoke-virtual {v15, v13, v10, v11}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v8

    .line 268
    .local v8, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 269
    .local v6, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 270
    .local v7, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v9, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v0, 0x0

    if-eqz v14, :cond_3

    .line 273
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1

    move/from16 v18, v1

    goto :goto_0

    :cond_3
    move/from16 v18, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v14, :cond_4

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    move/from16 v19, v2

    goto :goto_1

    :cond_4
    move/from16 v19, v0

    :goto_1
    if-eqz v14, :cond_5

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v0

    .line 271
    :goto_2
    move-object/from16 v20, v0

    move-object v0, v15

    move-object v1, v14

    move-object v2, v6

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide v6, v10

    .end local v6    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v7    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v21, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v22, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v23, v8

    move-object/from16 v8, v22

    .end local v8    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v23, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    move-wide/from16 v24, v10

    move-object/from16 v10, v16

    .end local v10    # "time":J
    .local v24, "time":J
    move/from16 v11, v17

    move-object/from16 v16, v12

    move/from16 v12, v18

    .end local v12    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v16, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    move/from16 v13, v19

    move-object/from16 v14, v20

    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 276
    .local v0, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 277
    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 278
    .end local v24    # "time":J
    .local v1, "time":J
    move-object/from16 v3, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v21    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    goto :goto_3

    .line 280
    .end local v1    # "time":J
    .end local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v21    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v24    # "time":J
    :cond_6
    move-object/from16 v3, v21

    move-wide/from16 v1, v24

    .end local v21    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v24    # "time":J
    .restart local v1    # "time":J
    .restart local v3    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_3
    move-object/from16 v4, v23

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 281
    .end local v23    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v4, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    move-object/from16 v8, v22

    move-object/from16 v7, p3

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 282
    .end local v22    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v6

    sget v10, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v6, v10, :cond_7

    .line 283
    iget-object v6, v15, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addSceneElement:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_7
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    move-object/from16 v10, p2

    invoke-virtual {v6, v4, v10}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSceneElement(Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v6

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 287
    return-void
.end method

.method public addSceneElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 34
    .param p2, "sceneId"    # Ljava/lang/String;
    .param p3, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p4, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/vui/commons/VuiPriority;",
            "Lcom/xiaopeng/vui/commons/IVuiSceneListener;",
            ")V"
        }
    .end annotation

    .local p1, "rootView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 177
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v0, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v1, v14, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v1, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    move-object v12, v1

    .line 187
    .local v12, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    if-nez v12, :cond_2

    return-void

    .line 188
    :cond_2
    move-object v1, v14

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    move-object/from16 v11, p3

    invoke-interface {v1, v11}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v7, v1

    .line 190
    .local v7, "time":J
    invoke-virtual {v15, v13, v7, v8}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    move-object v9, v1

    .line 191
    .local v9, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 192
    .local v6, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    .line 193
    .local v5, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v10, "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    move-object v4, v1

    .line 195
    .local v4, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz v14, :cond_3

    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isVuiLayoutLoadable()Z

    move-result v1

    move/from16 v21, v1

    goto :goto_0

    :cond_3
    move/from16 v21, v20

    :goto_0
    const/4 v3, 0x1

    if-eqz v14, :cond_4

    .line 198
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    move/from16 v22, v3

    goto :goto_1

    :cond_4
    move/from16 v22, v20

    :goto_1
    if-eqz v14, :cond_5

    .line 199
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 195
    :goto_2
    move-object/from16 v23, v1

    move-object v1, v15

    move-object v2, v14

    move-object v3, v6

    move-object/from16 v24, v4

    move-object/from16 v4, v16

    .end local v4    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .local v24, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    move-object/from16 v25, v5

    move-object/from16 v5, v17

    .end local v5    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v25, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v26, v6

    move-object v6, v0

    .end local v6    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v26, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    move-wide/from16 v27, v7

    .end local v7    # "time":J
    .local v27, "time":J
    move-object/from16 v29, v9

    move-object/from16 v9, v25

    .end local v9    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v29, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    move-object/from16 v11, v18

    move-object/from16 v16, v12

    move/from16 v12, v19

    .end local v12    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .local v16, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    move/from16 v13, v21

    move/from16 v14, v22

    move-object/from16 v15, v23

    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLcom/xiaopeng/vui/commons/IVuiElementChangedListener;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v1

    .line 200
    .local v1, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 201
    move-wide/from16 v2, v27

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setTimestamp(J)V

    .line 202
    .end local v27    # "time":J
    .local v2, "time":J
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    :try_start_2
    invoke-virtual {v5, v6, v4}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v8, v24

    move-object/from16 v7, p2

    :try_start_3
    invoke-virtual {v8, v7, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v4

    .line 204
    .end local v24    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .local v4, "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v8, "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    if-eqz v4, :cond_7

    .line 205
    invoke-virtual {v1, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 206
    iget-object v9, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    const-string v11, "addNotChildViewToScene element same"

    invoke-static {v9, v11}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v9, v26

    goto :goto_3

    .line 208
    :cond_6
    move-object/from16 v9, v26

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v26    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .local v9, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    goto :goto_3

    .line 218
    .end local v9    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v26    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_7
    move-object/from16 v9, v26

    .end local v26    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v9    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "targetElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    goto :goto_3

    .line 241
    .end local v0    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .end local v2    # "time":J
    .end local v8    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v9    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v25    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 221
    .restart local v0    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .restart local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .restart local v24    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v25    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .restart local v27    # "time":J
    .restart local v29    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :cond_8
    move-object/from16 v8, v24

    move-object/from16 v9, v26

    move-wide/from16 v2, v27

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .end local v24    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v26    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v27    # "time":J
    .restart local v2    # "time":J
    .restart local v8    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .restart local v9    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 222
    move-object/from16 v4, v29

    invoke-virtual {v4, v9}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 224
    .end local v29    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .local v4, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    iget-object v11, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addSceneElementGroup completed time:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v2

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v11, "user"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v11

    sget v12, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v11, v12, :cond_9

    .line 226
    iget-object v11, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addSceneElementGroup:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    goto :goto_4

    :cond_a
    const/4 v11, -0x1

    .line 229
    .local v11, "id":I
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, "subSceneid":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v13

    invoke-virtual {v13, v12, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 231
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/String;

    aput-object v12, v15, v20

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v13, v7, v15}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V

    .line 232
    if-eqz v6, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_b

    if-eqz p4, :cond_b

    .line 233
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v15

    move-object/from16 v14, v25

    invoke-virtual {v15, v7, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 234
    .end local v25    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v28, v15

    check-cast v28, Landroid/view/View;

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v27, v12

    move-object/from16 v29, p4

    invoke-virtual/range {v26 .. v31}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    .line 235
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v28, v15

    check-cast v28, Landroid/view/View;

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v27, v12

    move-object/from16 v29, p4

    invoke-virtual/range {v26 .. v31}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Z)V

    goto :goto_5

    .line 238
    .end local v14    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    move-object/from16 v14, v25

    .end local v25    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v15

    move-object/from16 v32, v0

    const/4 v0, 0x2

    .end local v0    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v32, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v33, v1

    const/4 v1, 0x1

    invoke-virtual {v15, v0, v1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 239
    .end local v1    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    .local v33, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v15

    invoke-virtual {v15, v0, v1, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 243
    .end local v2    # "time":J
    .end local v4    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v8    # "vuiSceneCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;
    .end local v9    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    .end local v10    # "bizIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "id":I
    .end local v12    # "subSceneid":Ljava/lang/String;
    .end local v14    # "allIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v32    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_c
    goto :goto_8

    .line 241
    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    :goto_6
    move-object/from16 v7, p2

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v7, v13

    move-object v6, v14

    move-object v5, v15

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSceneElementGroup e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

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

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 296
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->isContainNotChildrenView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getViewList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getPriority()Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->addNotChildViewToScene(Ljava/util/List;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getPriority()Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getPriority()Lcom/xiaopeng/vui/commons/VuiPriority;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->addSceneElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiPriority;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getView()Ljava/lang/ref/SoftReference;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getParentElementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->addSceneElement(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void
.end method
