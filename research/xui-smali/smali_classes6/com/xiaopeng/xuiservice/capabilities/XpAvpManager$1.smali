.class Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;
.super Landroid/content/BroadcastReceiver;
.source "XpAvpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    const-string v1, "XpAvpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "resultsUpdated"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    const-string v1, "XpAvpManager"

    const-string v2, "SCAN_RESULTS_AVAILABLE_ACTION. "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :cond_0
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const-string v1, "XpAvpManager"

    const-string v2, "WIFI_STATE_CHANGED_ACTION. "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "newState":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 90
    .end local v1    # "newState":I
    goto :goto_0

    .line 91
    .restart local v1    # "newState":I
    :cond_1
    nop

    .line 93
    .end local v1    # "newState":I
    :goto_0
    goto :goto_1

    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    const-string v1, "XpAvpManager"

    const-string v2, "NETWORK_STATE_CHANGED_ACTION. "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 98
    const-string v3, "networkInfo"

    .line 99
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 100
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v3, :cond_4

    return-void

    .line 101
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 102
    .local v4, "state":Landroid/net/NetworkInfo$State;
    const-string v5, "XpAvpManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_NETWORK_INFO. state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_5

    .line 104
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->switchSNAT(Z)V

    goto :goto_1

    .line 105
    :cond_5
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_7

    .line 106
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->switchSNAT(Z)V

    .line 107
    :cond_6
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    invoke-static {v5, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->access$002(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;Z)Z

    .line 111
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_7
    :goto_1
    return-void
.end method
