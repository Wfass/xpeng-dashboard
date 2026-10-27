.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartEggService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartEggService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "com.xiaopeng.intent.action.smartegg.llu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u8bf7\u505c\u8f66\u540e\u518d\u67e5\u770b\u60ca\u559c"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    return-void
.end method
