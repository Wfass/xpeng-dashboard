.class Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$3;
.super Landroid/content/BroadcastReceiver;
.source "XpAutoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 195
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 197
    .local v1, "state":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;I)V

    .line 199
    .end local v1    # "state":I
    :cond_0
    return-void
.end method
