.class Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;
.super Landroid/database/ContentObserver;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 78
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 79
    const-string v0, "psn_temperature_adjustment"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psn_temperature_adjustment"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "dbValue":Ljava/lang/String;
    const-string v1, "TemperatureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xptile settingprovider onChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " key: psn_temperature_adjustment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "value":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getCurrentState()I

    move-result v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;I)V

    .line 89
    .end local v0    # "dbValue":Ljava/lang/String;
    .end local v1    # "value":[Ljava/lang/String;
    :cond_0
    return-void
.end method
