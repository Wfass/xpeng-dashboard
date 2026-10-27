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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

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
    .locals 13

    .line 1152
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    return-void

    .line 1155
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v0

    .line 1156
    .local v0, "updateCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v1

    .line 1157
    .local v1, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;

    .line 1158
    .local v2, "removeCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$elementGroupId:Ljava/lang/String;

    .line 1159
    .local v3, "groupId":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    if-eqz v4, :cond_1b

    if-nez v3, :cond_1

    goto/16 :goto_9

    .line 1160
    :cond_1
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1161
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1700(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->isAccessibilityScene()Z

    move-result v8

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v10

    .line 1160
    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v4

    .line 1162
    .local v4, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    iget-boolean v5, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$handleCache:Z

    if-nez v5, :cond_5

    .line 1163
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 1164
    .local v5, "builder":Landroid/net/Uri$Builder;
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v6

    .line 1165
    .local v6, "jsonStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "removeSceneElementGroup"

    .line 1166
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "sceneId"

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    .line 1167
    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "packageName"

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1168
    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "packageVersion"

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1169
    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "id"

    .line 1170
    invoke-virtual {v7, v8, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "sceneData"

    .line 1171
    invoke-virtual {v7, v8, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1173
    :try_start_0
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1174
    .local v7, "result":Ljava/lang/String;
    const-string v8, "VuiSceneToolManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeSceneElementGroup to CarSpeech success"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1176
    if-eqz v2, :cond_3

    .line 1177
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_2
    if-eqz v2, :cond_3

    .line 1181
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->removeCache(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .end local v7    # "result":Ljava/lang/String;
    :cond_3
    :goto_0
    goto :goto_1

    .line 1184
    :catch_0
    move-exception v7

    .line 1185
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1186
    if-eqz v2, :cond_4

    .line 1187
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    return-void

    .line 1192
    .end local v5    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "jsonStr":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v5

    .line 1193
    .local v5, "type":I
    const/4 v6, 0x0

    .line 1194
    .local v6, "fusionElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-eqz v0, :cond_a

    .line 1195
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->getFusionType(Ljava/lang/String;)I

    move-result v5

    .line 1196
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_6

    .line 1197
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    .line 1199
    :cond_6
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_7

    .line 1200
    if-eqz v1, :cond_8

    .line 1201
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v7, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    .line 1203
    :cond_7
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_8

    .line 1204
    if-eqz v2, :cond_8

    .line 1205
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->getRemoveCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1206
    .local v7, "removeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "["

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1210
    .end local v7    # "removeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :goto_2
    if-eqz v6, :cond_a

    .line 1211
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1212
    invoke-virtual {v4, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    goto :goto_3

    .line 1214
    :cond_9
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$handleCache:Z

    invoke-virtual {v7, v8, v3, v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeSceneElementGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1215
    return-void

    .line 1219
    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$800(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1220
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_b

    .line 1221
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v4, v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1600(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/VuiScene;Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;)V

    goto/16 :goto_8

    .line 1222
    :cond_b
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_c

    .line 1223
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->updateDynamicScene(Lcom/xiaopeng/speech/vui/model/VuiScene;Z)V

    goto/16 :goto_8

    .line 1225
    :cond_c
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    .line 1226
    .local v7, "builder":Landroid/net/Uri$Builder;
    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v8

    .line 1227
    .local v8, "jsonStr":Ljava/lang/String;
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v9}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$200(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "removeSceneElementGroup"

    .line 1228
    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "sceneId"

    iget-object v11, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    .line 1229
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "packageName"

    iget-object v11, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1230
    invoke-static {v11}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "packageVersion"

    iget-object v11, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    .line 1231
    invoke-static {v11}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$300(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "id"

    .line 1232
    invoke-virtual {v9, v10, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v10, "sceneData"

    .line 1233
    invoke-virtual {v9, v10, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1235
    :try_start_1
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1236
    .local v9, "result":Ljava/lang/String;
    const-string v10, "VuiSceneToolManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "removeSceneElementGroup to CarSpeech success"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",result:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1238
    if-eqz v2, :cond_e

    .line 1239
    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1242
    :cond_d
    if-eqz v2, :cond_e

    .line 1243
    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->removeCache(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1251
    .end local v9    # "result":Ljava/lang/String;
    :cond_e
    :goto_4
    goto :goto_5

    .line 1246
    :catch_1
    move-exception v9

    .line 1247
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1248
    if-eqz v2, :cond_f

    .line 1249
    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_5
    if-eqz v1, :cond_11

    .line 1253
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v9, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1254
    if-eqz v6, :cond_10

    .line 1255
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v9, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1257
    :cond_10
    invoke-virtual {v4, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1259
    :cond_11
    const-string v9, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v9

    sget v10, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v9, v10, :cond_12

    .line 1260
    const-string v9, "VuiSceneToolManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "removeSceneElementGroup "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v8    # "jsonStr":Ljava/lang/String;
    :cond_12
    goto/16 :goto_8

    .line 1264
    :cond_13
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_14

    .line 1265
    if-eqz v1, :cond_19

    .line 1266
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    .line 1269
    :cond_14
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_15

    .line 1270
    if-eqz v0, :cond_17

    .line 1271
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/VuiScene;->getElements()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_6

    .line 1273
    :cond_15
    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;

    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$CacheType;->getType()I

    move-result v7

    if-ne v5, v7, :cond_16

    .line 1274
    if-eqz v2, :cond_17

    .line 1275
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1278
    :cond_16
    if-eqz v2, :cond_17

    .line 1279
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneRemoveTestCache;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_17
    :goto_6
    if-eqz v1, :cond_19

    .line 1283
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v7, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->removeElementFromCache(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1284
    if-eqz v6, :cond_18

    .line 1285
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$16;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCache;->setCache(Ljava/lang/String;Ljava/util/List;)V

    .line 1287
    :cond_18
    invoke-virtual {v4, v6}, Lcom/xiaopeng/speech/vui/model/VuiScene;->setElements(Ljava/util/List;)V

    .line 1290
    :cond_19
    :goto_7
    const-string v7, "user"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->getLogLevel()I

    move-result v7

    sget v8, Lcom/xiaopeng/speech/vui/utils/LogUtils;->LOG_DEBUG_LEVEL:I

    if-gt v7, v8, :cond_1a

    .line 1291
    const-string v7, "VuiSceneToolManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeSceneElementGroup:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_1a
    :goto_8
    return-void

    .line 1159
    .end local v4    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    .end local v5    # "type":I
    .end local v6    # "fusionElements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    :cond_1b
    :goto_9
    return-void
.end method
