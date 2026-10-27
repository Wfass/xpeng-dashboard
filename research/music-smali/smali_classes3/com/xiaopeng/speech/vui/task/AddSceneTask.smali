.class public Lcom/xiaopeng/speech/vui/task/AddSceneTask;
.super Lcom/xiaopeng/speech/vui/task/base/BaseTask;
.source "AddSceneTask.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/vui/task/base/BaseTask;-><init>(Lcom/xiaopeng/speech/vui/task/TaskWrapper;)V

    const-string v0, "VuiEngine_AddSceneTask"

    .line 32
    iput-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    return-void
.end method

.method private addNotChildViewToScene(Ljava/util/List;Ljava/lang/String;Lbyb;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/lang/String;",
            "Lbyb;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    const-string v13, "user"

    if-eqz v0, :cond_14

    if-nez v14, :cond_0

    goto/16 :goto_e

    .line 52
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 55
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 57
    invoke-virtual {v15, v14, v11, v12}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v10

    .line 58
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 60
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v8

    if-nez v8, :cond_2

    return-void

    .line 65
    :cond_2
    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lbxs;

    move-result-object v19

    const/4 v6, 0x1

    .line 66
    invoke-virtual {v8, v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setContainNotChildrenView(Z)V

    .line 68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_9

    .line 72
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lbxq;

    if-nez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v3, :cond_4

    .line 75
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_4

    const/16 v20, 0x1

    goto :goto_1

    :cond_4
    move/from16 v20, v1

    :goto_1
    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v3, :cond_5

    .line 80
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lbxq;

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbxq;

    invoke-interface {v1}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v24, v1

    goto :goto_2

    :cond_5
    const/16 v24, 0x0

    :goto_2
    if-eqz v20, :cond_6

    const/4 v1, 0x0

    move-object/from16 v25, v1

    goto :goto_3

    :cond_6
    move-object/from16 v25, v19

    :goto_3
    move-object/from16 v1, p0

    move/from16 v26, v2

    move-object v2, v3

    move-object/from16 v27, v3

    move-object v3, v9

    move-object v0, v4

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v5, v21

    move-object/from16 v28, v6

    move-object/from16 v6, v16

    move-object/from16 v29, v7

    move-object/from16 p3, v8

    move-wide v7, v11

    move-object/from16 v30, v9

    move-object/from16 v9, v17

    move-object/from16 v31, v10

    move-object/from16 v10, v18

    move-wide/from16 v32, v11

    move-object/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v34, v13

    move/from16 v13, v24

    move/from16 v14, v20

    move-object/from16 v15, v25

    .line 78
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 82
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    move-wide/from16 v2, v32

    .line 83
    invoke-virtual {v1, v2, v3}, Lbye;->setTimestamp(J)V

    .line 84
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v5, p0

    move-object/from16 v6, v27

    :try_start_2
    invoke-virtual {v5, v6, v4}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p2

    invoke-virtual {v0, v7, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 87
    invoke-virtual {v1, v4}, Lbye;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v8, v28

    move-object/from16 v6, v29

    move-object/from16 v4, v30

    goto :goto_4

    :cond_7
    move-object/from16 v4, v30

    .line 92
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v28

    .line 93
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v29

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, v28

    move-object/from16 v6, v29

    move-object/from16 v4, v30

    move-wide/from16 v2, v32

    :goto_4
    move/from16 v1, v20

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_c

    :cond_9
    :goto_5
    move/from16 v26, v2

    move-object v0, v4

    move-object v6, v7

    move-object/from16 p3, v8

    move-object v4, v9

    move-object/from16 v31, v10

    move-wide v2, v11

    move-object/from16 v34, v13

    move-object v7, v14

    move-object v8, v5

    move-object v5, v15

    :goto_6
    add-int/lit8 v9, v26, 0x1

    move-wide v11, v2

    move-object v15, v5

    move-object v14, v7

    move-object v5, v8

    move v2, v9

    move-object/from16 v10, v31

    move-object/from16 v13, v34

    move-object/from16 v8, p3

    move-object v9, v4

    move-object v7, v6

    const/4 v6, 0x1

    move-object v4, v0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_a
    move-object v0, v4

    move-object v6, v7

    move-object/from16 p3, v8

    move-object v4, v9

    move-object/from16 v31, v10

    move-wide v2, v11

    move-object/from16 v34, v13

    move-object v7, v14

    move-object v8, v5

    move-object v5, v15

    const/4 v1, 0x0

    .line 97
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_c

    .line 98
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbye;

    .line 99
    invoke-virtual {v9}, Lbye;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 100
    invoke-virtual {v9, v10}, Lbye;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 101
    invoke-interface {v4, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 106
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    move-object/from16 v0, v31

    .line 107
    invoke-virtual {v0, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 116
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v9, v34

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v10, ","

    if-nez v1, :cond_d

    :try_start_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v11, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v11, :cond_d

    .line 117
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addNotChildViewToScene completed time:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_d
    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_f

    const/4 v3, 0x0

    .line 125
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_f

    .line 126
    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 127
    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 128
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15, v13}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v14, v15, v11}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_9

    :cond_e
    const/4 v15, 0x1

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v15, 0x1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getNotChildrenViewIdList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_10

    .line 137
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v2, v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v2, v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    :goto_a
    move-object/from16 v1, p3

    goto :goto_b

    .line 140
    :cond_10
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v7, v4, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getFusionCache(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 143
    invoke-virtual {v1, v7, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 144
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v1

    sget v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v1, v3, :cond_11

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v5, v7, v3, v4}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 147
    iget-object v2, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNotChildViewToScene full_scene_info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_11
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v15, v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v15, v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    goto :goto_a

    .line 153
    :goto_b
    invoke-virtual {v1, v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    .line 154
    invoke-virtual {v1, v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    goto :goto_d

    :cond_12
    move-object/from16 v1, p3

    const/4 v15, 0x1

    .line 156
    invoke-virtual {v1, v8}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewList(Ljava/util/List;)V

    .line 157
    invoke-virtual {v1, v6}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->setNotChildrenViewIdList(Ljava/util/List;)V

    .line 158
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v2, v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 159
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    invoke-virtual {v1, v2, v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v5, v15

    .line 163
    :goto_c
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNotChildViewToScene e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    :goto_d
    return-void

    :cond_14
    :goto_e
    move-object v5, v15

    return-void
.end method


# virtual methods
.method public addSceneElement(Ljava/lang/ref/SoftReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
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

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p3

    .line 255
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 256
    instance-of v0, v1, Lbxq;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 266
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 267
    invoke-virtual {v15, v14, v12, v13}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v11

    .line 268
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 270
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lbxq;

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbxq;

    invoke-interface {v6}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v6

    move/from16 v19, v6

    goto :goto_0

    :cond_3
    move/from16 v19, v2

    :goto_0
    const/4 v8, 0x1

    if-eqz v1, :cond_4

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_4

    move/from16 v20, v8

    goto :goto_1

    :cond_4
    move/from16 v20, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lbxs;

    move-result-object v0

    :goto_2
    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-wide v6, v12

    move-object v8, v9

    move-object/from16 v22, v9

    move-object/from16 v9, v16

    move-object/from16 v23, v10

    move-object/from16 v10, v17

    move-object/from16 v24, v11

    move/from16 v11, v18

    move-wide/from16 v25, v12

    move/from16 v12, v19

    move/from16 v13, v20

    move-object v15, v14

    move-object/from16 v14, v21

    .line 271
    invoke-virtual/range {v0 .. v14}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 276
    invoke-virtual {v0}, Lbye;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    move-wide/from16 v1, v25

    .line 277
    invoke-virtual {v0, v1, v2}, Lbye;->setTimestamp(J)V

    move-object/from16 v3, v23

    .line 278
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object/from16 v3, v23

    move-wide/from16 v1, v25

    :goto_3
    move-object/from16 v0, v24

    .line 280
    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 281
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-virtual {v3, v15, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 282
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v3

    sget v4, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v3, v4, :cond_7

    move-object/from16 v3, p0

    .line 283
    iget-object v4, v3, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSceneElement:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object/from16 v3, p0

    .line 285
    :goto_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSceneElement(Lcom/xiaopeng/speech/vui/model/VuiScene;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V

    return-void
.end method

.method public addSceneElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Lbyb;Lbxv;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/String;",
            "Lbyb;",
            "Lbxv;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v14, p2

    .line 177
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 178
    instance-of v1, v0, Lbxq;

    if-nez v1, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->canUpdateScene(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 188
    :cond_2
    move-object v2, v0

    check-cast v2, Lbxq;

    move-object/from16 v3, p3

    invoke-interface {v2, v3}, Lbxq;->setVuiPriority(Lbyb;)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 190
    invoke-virtual {v15, v14, v11, v12}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->getNewVuiScene(Ljava/lang/String;J)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v10

    .line 191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 193
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lbxq;

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbxq;

    invoke-interface {v2}, Lbxq;->isVuiLayoutLoadable()Z

    move-result v2

    move/from16 v20, v2

    goto :goto_0

    :cond_3
    move/from16 v20, v19

    :goto_0
    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 198
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_4

    move/from16 v21, v6

    goto :goto_1

    :cond_4
    move/from16 v21, v19

    :goto_1
    if-eqz v0, :cond_5

    .line 199
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getElementChangedListener()Lbxs;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    move-object/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v6, v13

    move-object/from16 p3, v7

    move-object/from16 v23, v8

    move-wide v7, v11

    move-object/from16 v24, v9

    move-object/from16 v9, p3

    move-object/from16 v25, v10

    move-object/from16 v10, v16

    move-wide/from16 v26, v11

    move-object/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v28, v13

    move/from16 v13, v20

    move/from16 v14, v21

    move-object/from16 v15, v22

    .line 195
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->buildView(Ljava/lang/ref/SoftReference;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/SoftReference;Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/lang/String;IZZLbxs;)Lbye;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 200
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    move-wide/from16 v2, v26

    .line 201
    invoke-virtual {v1, v2, v3}, Lbye;->setTimestamp(J)V

    .line 202
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v5, p0

    :try_start_2
    invoke-virtual {v5, v0, v4}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->setVuiTag(Ljava/lang/ref/SoftReference;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lbye;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p2

    move-object/from16 v7, v23

    invoke-virtual {v7, v6, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;->getVuiElementById(Ljava/lang/String;Ljava/lang/String;)Lbye;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 205
    invoke-virtual {v1, v4}, Lbye;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    const-string v4, "addNotChildViewToScene element same"

    invoke-static {v1, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v24

    goto :goto_3

    :cond_6
    move-object/from16 v4, v24

    .line 208
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object/from16 v4, v24

    .line 218
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v4, v24

    move-wide/from16 v2, v26

    .line 221
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    move-object/from16 v1, v25

    .line 222
    invoke-virtual {v1, v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 224
    iget-object v4, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSceneElementGroup completed time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user"

    .line 225
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v2

    sget v3, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v2, v3, :cond_9

    .line 226
    iget-object v2, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSceneElementGroup:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 228
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    goto :goto_4

    :cond_a
    const/4 v2, -0x1

    .line 229
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    move-object/from16 v4, v28

    invoke-virtual {v3, v2, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 231
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    aput-object v2, v7, v19

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addSubSceneIds(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v0, :cond_b

    .line 232
    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    if-eqz p4, :cond_b

    .line 233
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    move-object/from16 v7, p3

    invoke-virtual {v3, v6, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->setSceneIdList(Ljava/lang/String;Ljava/util/List;)V

    .line 234
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, v2

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;Z)V

    .line 235
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, v2

    move-object/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;Z)V

    .line 238
    :cond_b
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->sendSceneData(IZLjava/lang/Object;)V

    .line 239
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(IZLjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v5, v15

    .line 242
    :goto_5
    iget-object v1, v5, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSceneElementGroup e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method

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

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->build(ILandroid/view/View;)Ljava/util/List;

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

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->build(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
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

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getPriority()Lbyb;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->addNotChildViewToScene(Ljava/util/List;Ljava/lang/String;Lbyb;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getPriority()Lbyb;

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

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getPriority()Lbyb;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->viewWrapper:Lcom/xiaopeng/speech/vui/task/TaskWrapper;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/task/TaskWrapper;->getListener()Lbxv;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/task/AddSceneTask;->addSceneElementGroup(Ljava/lang/ref/SoftReference;Ljava/lang/String;Lbyb;Lbxv;)V

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

    :goto_0
    return-void
.end method
