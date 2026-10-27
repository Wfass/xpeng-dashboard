.class Lcom/xiaopeng/devtools/model/f/d$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiBtModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uD:Lcom/xiaopeng/devtools/model/f/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/f/d;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 144
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 145
    const p2, 0x7f1002da

    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 147
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 149
    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object p2, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object p2, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object p2, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :goto_0
    goto :goto_1

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    :goto_1
    goto :goto_2

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    :goto_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v2}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v3}, Lcom/xiaopeng/devtools/model/f/d;->e(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    goto :goto_4

    :cond_4
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 178
    const-string p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 180
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;I)I

    goto :goto_3

    .line 183
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;I)I

    .line 185
    :goto_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->k(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    iget-object p2, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p2}, Lcom/xiaopeng/devtools/model/f/d;->l(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->g(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/d;->m(Lcom/xiaopeng/devtools/model/f/d;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d$3;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/d;->k(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/WifiStateMacEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 190
    :cond_7
    :goto_4
    return-void
.end method
