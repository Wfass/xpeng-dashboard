.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$elementGroupId:Ljava/lang/String;

.field final synthetic val$handleCache:Z

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$elementGroupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$handleCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 1152
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1155
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    .line 1156
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v2

    .line 1157
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    .line 1158
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$elementGroupId:Ljava/lang/String;

    .line 1159
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    if-eqz v5, :cond_18

    if-nez v4, :cond_1

    goto/16 :goto_9

    .line 1160
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1161
    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1700(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v8

    iget-object v9, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v10}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v10

    .line 1160
    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v5

    .line 1162
    iget-boolean v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$handleCache:Z

    const-string v7, ",result:"

    const-string v8, "removeSceneElementGroup to CarSpeech success"

    const-string v9, "sceneData"

    const-string v10, "id"

    const-string v11, "packageVersion"

    const-string v12, "packageName"

    const-string v13, "sceneId"

    const-string v14, "removeSceneElementGroup"

    const-string v15, "VuiSceneToolManager"

    if-nez v6, :cond_4

    .line 1163
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1164
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    .line 1165
    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1166
    invoke-virtual {v5, v14}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    .line 1167
    invoke-virtual {v5, v13, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1168
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1169
    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1170
    invoke-virtual {v5, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1171
    invoke-virtual {v5, v9, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1173
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_3

    .line 1177
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 1181
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1185
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz v3, :cond_3

    .line 1187
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 1192
    :cond_4
    sget-object v6, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v6

    move/from16 v16, v6

    if-eqz v0, :cond_9

    .line 1195
    iget-object v6, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionType(Ljava/lang/String;)I

    move-result v6

    .line 1196
    sget-object v16, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    move-object/from16 v18, v15

    invoke-virtual/range {v16 .. v16}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v15

    if-ne v6, v15, :cond_5

    .line 1197
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v15, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    :goto_1
    move/from16 v16, v6

    goto :goto_3

    .line 1199
    :cond_5
    sget-object v15, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v15

    if-ne v6, v15, :cond_6

    if-eqz v2, :cond_7

    .line 1201
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v15, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_1

    .line 1203
    :cond_6
    sget-object v15, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v15

    if-ne v6, v15, :cond_7

    if-eqz v3, :cond_7

    .line 1205
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1206
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v4, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "["

    move/from16 v16, v6

    const-string v6, ""

    invoke-virtual {v4, v15, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "]"

    invoke-virtual {v4, v15, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    move/from16 v16, v6

    :goto_2
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_a

    .line 1211
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1212
    invoke-virtual {v5, v15}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    goto :goto_4

    .line 1214
    :cond_8
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$handleCache:Z

    invoke-virtual {v0, v2, v4, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_9
    move-object/from16 v18, v15

    :cond_a
    :goto_4
    move/from16 v6, v16

    .line 1219
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z

    move-result v0

    const-string v15, "user"

    if-eqz v0, :cond_11

    .line 1220
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_b

    .line 1221
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v2, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_9

    .line 1222
    :cond_b
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_c

    .line 1223
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto/16 :goto_9

    .line 1225
    :cond_c
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1226
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v15

    .line 1227
    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v15}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    .line 1228
    invoke-virtual {v15, v14}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    iget-object v15, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    .line 1229
    invoke-virtual {v14, v13, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    iget-object v14, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1230
    invoke-static {v14}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    iget-object v13, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1231
    invoke-static {v13}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    .line 1232
    invoke-virtual {v11, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1233
    invoke-virtual {v10, v9, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1235
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v7, v18

    :try_start_2
    invoke-static {v7, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v3, :cond_e

    .line 1239
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    if-eqz v3, :cond_e

    .line 1243
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->removeCache(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v7, v18

    .line 1247
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    if-eqz v3, :cond_e

    .line 1249
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_6
    if-eqz v2, :cond_10

    .line 1253
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1255
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1257
    :cond_f
    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1259
    :cond_10
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v8, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v2, :cond_18

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSceneElementGroup "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_11
    move-object v8, v15

    move-object/from16 v7, v18

    .line 1264
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_12

    if-eqz v2, :cond_17

    .line 1266
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 1269
    :cond_12
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_13

    if-eqz v16, :cond_15

    .line 1271
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v3

    move-object/from16 v6, v16

    invoke-virtual {v6, v0, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    .line 1273
    :cond_13
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v0

    if-ne v6, v0, :cond_14

    if-eqz v3, :cond_15

    .line 1275
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    if-eqz v3, :cond_15

    .line 1279
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_7
    if-eqz v2, :cond_17

    .line 1283
    iget-object v0, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1285
    iget-object v3, v1, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1287
    :cond_16
    invoke-virtual {v5, v0}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1290
    :cond_17
    :goto_8
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v0

    sget v2, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v0, v2, :cond_18

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSceneElementGroup:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_9
    return-void
.end method
