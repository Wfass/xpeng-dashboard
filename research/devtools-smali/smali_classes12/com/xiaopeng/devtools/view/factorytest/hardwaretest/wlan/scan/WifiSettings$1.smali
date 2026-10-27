.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;-><init>()V
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

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$1;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 155
    return-void
.end method
