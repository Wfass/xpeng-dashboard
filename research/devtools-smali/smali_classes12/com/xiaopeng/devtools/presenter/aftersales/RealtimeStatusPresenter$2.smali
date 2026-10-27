.class Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "RealtimeStatusPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 148
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 150
    new-instance p2, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;-><init>()V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 153
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->b(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->setName(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->setStrength(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->setIp(Ljava/lang/String;)V

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;)V

    .line 163
    goto :goto_0

    :cond_1
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    const-string p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$2;->vM:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;

    invoke-static {p2, p1}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;->a(Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;I)V

    .line 168
    :cond_2
    :goto_0
    return-void
.end method
