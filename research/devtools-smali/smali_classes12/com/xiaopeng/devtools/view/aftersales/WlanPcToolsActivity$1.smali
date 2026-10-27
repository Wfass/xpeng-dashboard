.class Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WlanPcToolsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 43
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const-string p1, "wifi_state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 45
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 50
    :pswitch_0
    const-string p1, "WlanPcToolsActivity"

    const-string p2, "WlanPcToolsActivity WIFI_AP_STATE_ENABLED"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;Z)Z

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V

    .line 53
    goto :goto_1

    .line 47
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;Z)Z

    .line 48
    goto :goto_1

    .line 55
    :pswitch_2
    const-string p1, "WlanPcToolsActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WlanPcToolsActivity WIFI_AP_STATE_DISABLED mIsServiceQuit : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->b(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;Z)Z

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->b(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->c(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Lcom/xiaopeng/xui/app/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->c(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Lcom/xiaopeng/xui/app/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->d(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->e(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->stopService(Landroid/content/Intent;)Z

    .line 67
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->d(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    const v2, 0x7f100241

    new-array p2, p2, [Ljava/lang/Object;

    const-string v3, "UNKNOWN"

    aput-object v3, p2, v0

    invoke-virtual {v1, v2, p2}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    goto :goto_2

    :cond_2
    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 72
    const-string p1, "WlanPcToolsActivity"

    const-string p2, "WlanPcToolsActivity NETWORK_STATE_CHANGED_ACTION"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity$1;->EV:Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/WlanPcToolsActivity;)V

    .line 75
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
