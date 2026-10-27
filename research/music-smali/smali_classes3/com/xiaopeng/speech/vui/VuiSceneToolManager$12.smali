.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->sendSceneData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;->val$sceneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 836
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;->val$sceneId:Ljava/lang/String;

    .line 840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 841
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 842
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 843
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 844
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 845
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 846
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 847
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_2
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 853
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 854
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 855
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 856
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 858
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 859
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 860
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 861
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 862
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v3, v2}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    goto :goto_1

    .line 868
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$12;->this$0:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;->access$1400(Lcom/xiaopeng/speech/vui/VuiSceneToolManager;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
