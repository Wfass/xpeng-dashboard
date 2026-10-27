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
    .locals 10

    .line 2174
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2175
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2179
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 2183
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    const-string v5, "VuiEngine"

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v0, "\u8981\u9500\u6bc1\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    .line 2184
    invoke-static {v5, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2188
    :cond_2
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2189
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->isWholeScene()Z

    move-result v3

    :goto_0
    invoke-virtual {v4, v6, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Z)V

    goto :goto_2

    .line 2191
    :cond_4
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2192
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2194
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2195
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    .line 2196
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2197
    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2198
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2200
    :cond_5
    invoke-virtual {v4}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 2201
    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2202
    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 2203
    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    iget-object v9, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v7, v8, v6, v3, v9}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2205
    :cond_6
    sget-object v7, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2208
    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeVuiSceneListener :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",isupload:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",keepCache:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/task/TaskDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/task/TaskDispatcher;->removeTask(Ljava/lang/String;)V

    .line 2210
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    .line 2211
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$keepCache:Z

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$31;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->removeVuiSceneListener(Ljava/lang/String;ZZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V

    return-void
.end method
