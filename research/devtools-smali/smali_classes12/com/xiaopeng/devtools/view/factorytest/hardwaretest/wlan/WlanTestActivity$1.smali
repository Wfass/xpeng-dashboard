.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WlanTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;->MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 49
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 51
    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 53
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    const p2, 0x7f1004b6

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;->MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;->MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;->MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;->MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    const v1, 0x7f1004b5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 59
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 60
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    goto :goto_1

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity$1;->MX:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WlanTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    :cond_2
    :goto_1
    return-void
.end method
