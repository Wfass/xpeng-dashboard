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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

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

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->getSceneUnqiueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "newSceneId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getSceneInfo(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;

    move-result-object v1

    .line 758
    .local v1, "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;->getListener()Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 759
    const-string v2, "VuiEngine"

    const-string v3, "\u8981\u9000\u51fa\u7684\u573a\u666f\u548c\u76ee\u524d\u6301\u6709\u7684\u573a\u666f\u6570\u636e\u4e0d\u4e00\u81f4"

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    return-void

    .line 762
    :cond_0
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    .line 763
    .local v2, "appScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    if-nez v2, :cond_1

    .line 764
    new-instance v3, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    invoke-direct {v3}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;-><init>()V

    move-object v2, v3

    .line 766
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$sceneId:Ljava/lang/String;

    const-string v4, "PopPanel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 767
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v3

    .line 768
    .local v3, "panelStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 769
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 770
    const-string v4, "VuiEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VuiSceneTagInfo]exitScene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",scene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 773
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    :cond_2
    return-void

    .line 777
    .end local v3    # "panelStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v3

    .line 778
    .local v3, "sceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 779
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 781
    :cond_4
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 782
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 784
    :cond_5
    const-string v4, "VuiEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VuiSceneTagInfo]exitScene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",sceneMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",,activeScene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$100(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->exitScene(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 787
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 788
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 789
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 790
    .local v4, "mActiveSceneId":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    move-object v5, v4

    .line 793
    .local v5, "sceneId":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    iget-object v8, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-static {v6, v4, v7, v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 794
    .end local v4    # "mActiveSceneId":Ljava/lang/String;
    .end local v5    # "sceneId":Ljava/lang/String;
    goto :goto_0

    .line 795
    :cond_6
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_7
    :goto_0
    const-string v4, "primary"

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 800
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 801
    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 803
    .end local v4    # "i":I
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 804
    .local v4, "mActiveSceneId":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    const-string v6, "primary"

    invoke-interface {v5, v6, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    move-object v5, v4

    .line 807
    .restart local v5    # "sceneId":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iget-boolean v7, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$isWholeScene:Z

    const-string v8, "primary"

    invoke-static {v6, v4, v7, v8}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$700(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/lang/String;ZLjava/lang/String;)V

    .line 808
    iget-object v6, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v6}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$600(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 810
    .end local v4    # "mActiveSceneId":Ljava/lang/String;
    .end local v5    # "sceneId":Ljava/lang/String;
    :cond_9
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$7;->val$finalDisplayLocation:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string v4, "VuiEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitScene:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",map:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v0    # "newSceneId":Ljava/lang/String;
    .end local v1    # "info":Lcom/xiaopeng/speech/vui/model/VuiSceneInfo;
    .end local v2    # "appScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    .end local v3    # "sceneTask":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method
