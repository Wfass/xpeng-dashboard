.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Nu:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;->Nu:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;->Nu:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;Z)Z

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;->Nu:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;->Nu:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->do(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment$1;->Nu:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/RestrictedSettingsFragment;Landroid/preference/Preference;)V

    .line 68
    :cond_0
    return-void
.end method
