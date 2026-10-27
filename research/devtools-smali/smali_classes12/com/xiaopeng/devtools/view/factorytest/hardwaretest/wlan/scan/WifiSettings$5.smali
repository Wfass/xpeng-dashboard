.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
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

    .line 372
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$5;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;)V
    .locals 2

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings$5;->Os:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->nu()Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiSettings;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/WifiConfigController;)V

    .line 377
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/f;->dismiss()V

    .line 379
    :cond_0
    return-void
.end method
