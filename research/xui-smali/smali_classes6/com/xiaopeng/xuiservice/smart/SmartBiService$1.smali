.class Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartBiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 63
    const-string v0, "SmartBiService"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "LogString"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "jsonStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartBiService;->handleBiUploadEvent(Ljava/lang/String;)V

    .line 67
    return-void
.end method
