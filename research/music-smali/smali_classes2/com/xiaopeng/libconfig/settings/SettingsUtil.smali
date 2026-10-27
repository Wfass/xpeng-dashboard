.class public Lcom/xiaopeng/libconfig/settings/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field private static final EXTRA_PAGE:Ljava/lang/String; = "extra_page"

.field public static final PACKAGE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final PAGE_ABOUT:Ljava/lang/String; = "About"

.field public static final PAGE_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field public static final PAGE_DATE_AND_TIME:Ljava/lang/String; = "Date"

.field public static final PAGE_DISPALY:Ljava/lang/String; = "Display"

.field public static final PAGE_OTA_UPDATE:Ljava/lang/String; = "OTAUpdate"

.field public static final PAGE_SOUND:Ljava/lang/String; = "Sound"

.field public static final PAGE_WIFI:Ljava/lang/String; = "WiFi"

.field public static final PAGE_WLAN:Ljava/lang/String; = "CarWLAN"

.field private static final SETTINGS_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/libconfig/settings/SettingsUtil;->SETTINGS_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static openSettings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    sget-object v1, Lcom/xiaopeng/libconfig/settings/SettingsUtil;->SETTINGS_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "extra_page"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
