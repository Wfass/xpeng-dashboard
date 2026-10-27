.class Lcom/xiaopeng/devtools/presenter/i/b$1;
.super Landroid/content/BroadcastReceiver;
.source "UserSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Al:Lcom/xiaopeng/devtools/presenter/i/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/i/b;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 40
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 41
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 42
    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 44
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/i/b;->a(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xpeng/test/WifiTest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xpeng/test/WifiTest;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object p1

    const-string p2, "UNKNOWN"

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/usersettings/a;->dA(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 52
    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p2}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaopeng/devtools/view/usersettings/a;->dA(Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$1;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object p1

    const-string p2, "UNKNOWN"

    invoke-interface {p1, p2}, Lcom/xiaopeng/devtools/view/usersettings/a;->dA(Ljava/lang/String;)V

    .line 62
    :cond_3
    :goto_1
    return-void
.end method
