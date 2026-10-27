.class Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartAvasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAvasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAvasService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartAvasService mReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  keytype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "keytype"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.xiaopeng.intent.action.xkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "keytype"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "short"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "keyfunc"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->access$000()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAvasService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAvasService;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartAvasService;->playAvasSayHiSound()V

    .line 70
    :cond_1
    return-void
.end method
