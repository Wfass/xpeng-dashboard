.class Lcom/xiaopeng/xuiservice/device/DeviceService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/device/DeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/device/DeviceService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 556
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$SettingsObserver;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    .line 557
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 558
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 568
    if-eqz p1, :cond_0

    return-void

    .line 570
    :cond_0
    return-void
.end method

.method public register()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$SettingsObserver;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService;->access$100(Lcom/xiaopeng/xuiservice/device/DeviceService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 562
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RSE_STATE_CONTROL:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 563
    sget-object v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RSE_ANGLE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 564
    sget-object v1, Lcom/xiaopeng/xuiservice/device/DeviceService;->URI_RES_LOCK:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 565
    return-void
.end method
