.class Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;
.super Landroid/content/BroadcastReceiver;
.source "ConditionBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->onStartWatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->access$000(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->access$000(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->INFO(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->access$102(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;Z)Z

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->access$202(Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBroadcast;->notifyConditionChange()V

    .line 53
    :cond_0
    return-void
.end method
