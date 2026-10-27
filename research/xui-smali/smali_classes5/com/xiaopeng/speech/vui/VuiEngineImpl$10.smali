.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->updateElementAttribute(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$sceneId:Ljava/lang/String;

.field final synthetic val$viewList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 1045
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$viewList:Ljava/util/List;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$sceneId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1048
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->cannotUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$viewList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$sceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1055
    :cond_1
    const-string v0, "VuiEngine"

    const-string v1, "updateElementAttribute"

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v0

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$sceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1059
    new-instance v0, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->getUpdateViews()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1060
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$viewList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1061
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1062
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->setUpdateViews(Ljava/util/List;)V

    .line 1063
    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    goto :goto_0

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->run()V

    .line 1066
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    new-instance v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-direct {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1202(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->setSceneId(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$viewList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->setUpdateViews(Ljava/util/List;)V

    .line 1069
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1072
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    new-instance v3, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    iget-object v4, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-direct {v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;-><init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)V

    invoke-static {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1202(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    .line 1073
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$sceneId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->setSceneId(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->val$viewList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;->setUpdateViews(Ljava/util/List;)V

    .line 1075
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1300(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$10;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->access$1200(Lcom/xiaopeng/speech/vui/VuiEngineImpl;)Lcom/xiaopeng/speech/vui/VuiEngineImpl$UpdateElementAttrRun;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1077
    :goto_0
    return-void

    .line 1052
    :cond_4
    :goto_1
    return-void
.end method
