.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "XAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.xiaopeng.intent.action.XUI_DIALOG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSubScreenDeviceId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V

    .line 111
    :cond_0
    return-void
.end method
