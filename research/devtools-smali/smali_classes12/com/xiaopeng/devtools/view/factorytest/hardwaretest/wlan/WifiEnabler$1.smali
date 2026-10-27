.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic MS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler$1;->MS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 49
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler$1;->MS:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;

    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/WifiEnabler;I)V

    .line 53
    :cond_0
    return-void
.end method
