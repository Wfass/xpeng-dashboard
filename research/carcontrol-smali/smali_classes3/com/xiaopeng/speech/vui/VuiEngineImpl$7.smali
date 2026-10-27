.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/IVuiSceneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$finalDisplayLocation:Ljava/lang/String;

.field final synthetic val$isWholeScene:Z

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Ljava/lang/String;Z)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "primary"

    const-string v1, "VuiEngine"

    .line 756
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v3

    .line 758
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "\u8981\u9000\u51fa\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    .line 759
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 762
    :cond_0
    sget-object v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    if-nez v3, :cond_1

    .line 764
    new-instance v3, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    invoke-direct {v3}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;-><init>()V

    .line 766
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneId:Ljava/lang/String;

    const-string v5, "PopPanel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "[VuiSceneTagInfo]exitScene:"

    if-eqz v4, :cond_3

    .line 767
    :try_start_1
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",scene:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 773
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 777
    :cond_3
    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v4

    .line 778
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 779
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 781
    :cond_4
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 782
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 784
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",sceneMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",,activeScene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 787
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 788
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 789
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 790
    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-static {v6, v5, v7, v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 795
    :cond_6
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_7
    :goto_0
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    const/4 v5, 0x0

    .line 800
    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 801
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 803
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 804
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    invoke-static {v5, v4, v6, v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 810
    :cond_9
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitScene:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",map:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
