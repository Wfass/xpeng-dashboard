.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

.field private Ou:I


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 649
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Ou:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 669
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 670
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Ou:I

    goto :goto_0

    .line 671
    :cond_0
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Ou:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Ou:I

    const/4 v2, 0x3

    if-lt p1, v2, :cond_2

    .line 672
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Ou:I

    .line 673
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 674
    if-eqz p1, :cond_1

    .line 675
    const v0, 0x7f100475

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 676
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 678
    :cond_1
    return-void

    .line 680
    :cond_2
    :goto_0
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->sendEmptyMessageDelayed(IJ)Z

    .line 681
    return-void
.end method

.method pause()V
    .locals 1

    .line 663
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->Ou:I

    .line 664
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->removeMessages(I)V

    .line 665
    return-void
.end method

.method resume()V
    .locals 2

    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$b;->sendEmptyMessage(I)Z

    .line 655
    :cond_0
    return-void
.end method
