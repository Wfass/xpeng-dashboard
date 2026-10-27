.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 220
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SmartBootService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "com.xiaopeng.intent.action.bootsound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 228
    const-string v1, "effectid"

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, "effectId":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v4, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 230
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v4, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IZ)V

    .line 231
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$302(Z)Z

    .line 232
    .end local v1    # "effectId":I
    goto :goto_0

    :cond_0
    const-string v1, "com.xiaopeng.intent.action.bootsound.stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 235
    :cond_1
    :goto_0
    return-void
.end method
