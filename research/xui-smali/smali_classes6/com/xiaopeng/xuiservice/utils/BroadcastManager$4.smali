.class Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registBootCompleteBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    .line 302
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 305
    const-string v0, "BroadcastManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBootTaskList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->access$300(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mLockedBootTaskList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->access$400(Lcom/xiaopeng/xuiservice/utils/BroadcastManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$4;->this$0:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->handleBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 307
    return-void
.end method
