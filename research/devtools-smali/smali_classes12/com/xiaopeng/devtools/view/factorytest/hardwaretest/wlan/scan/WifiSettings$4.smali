.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$4;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$4;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 215
    if-eqz p1, :cond_0

    .line 216
    const v0, 0x7f100477

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 220
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 210
    return-void
.end method
