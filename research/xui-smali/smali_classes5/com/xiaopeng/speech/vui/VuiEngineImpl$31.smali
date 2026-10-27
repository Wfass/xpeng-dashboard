.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->removeVuiSceneListener(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$keepCache:Z

.field final synthetic val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 2171
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iput-boolean p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 2174
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 2177
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    const/4 v2, 0x0

    .line 2178
    .local v2, "isupload":Z
    if-eqz v1, :cond_1

    .line 2179
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2180
    const/4 v2, 0x1

    .line 2183
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2184
    const-string v3, "VuiEngine"

    const-string v4, "\u8981\u9500\u6bc1\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2185
    return-void

    .line 2188
    :cond_2
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 2189
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v4

    :goto_0
    invoke-virtual {v3, v5, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2191
    :cond_4
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2192
    .local v3, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2194
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2195
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    .line 2196
    .local v7, "appScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v8

    .line 2197
    .local v8, "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2198
    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2200
    :cond_5
    invoke-virtual {v7}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v9

    .line 2201
    .local v9, "panelStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2202
    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 2203
    iget-object v10, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v11, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    iget-object v12, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v10, v11, v6, v4, v12}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2205
    :cond_6
    sget-object v10, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v10, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "appScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v8    # "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "panelStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    goto :goto_1

    .line 2208
    .end local v3    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_7
    :goto_2
    const-string v3, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeVuiSceneListener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isupload:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",keepCache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->removeTask(Ljava/lang/String;)V

    .line 2210
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2211
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2212
    return-void
.end method
