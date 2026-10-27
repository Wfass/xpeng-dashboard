.class public Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;
.super Ljava/lang/Object;
.source "DataRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository$LocalDataRepositoryHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataRepository"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository$LocalDataRepositoryHolder;->instance:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    return-object v0
.end method


# virtual methods
.method public getBrightnessKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "displayId"    # I

    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string v0, "screen_brightness"

    goto :goto_0

    :cond_0
    const-string v0, "screen_brightness_1"

    .line 72
    :goto_0
    return-object v0
.end method

.method public getBrightnessModeKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "displayId"    # I

    .line 77
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SHARED_DISPLAY_ENABLED:Z

    if-eqz v0, :cond_1

    .line 78
    if-nez p1, :cond_0

    .line 79
    const-string v0, "screen_brightness_mode_0"

    goto :goto_0

    :cond_0
    const-string v0, "screen_brightness_mode_1"

    .line 78
    :goto_0
    return-object v0

    .line 81
    :cond_1
    const-string v0, "screen_brightness_mode"

    return-object v0
.end method

.method public getScreenBrightness(Landroid/content/Context;I)I
    .locals 5
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "nowBrightnessValue":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 63
    .local v1, "resolver":Landroid/content/ContentResolver;
    nop

    .line 64
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getBrightnessKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DataRepository"

    const-string v4, "getScreenBrightness error"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isAdaptiveBrightness(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getBrightnessModeKey(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 36
    .local v0, "brightnessMode":I
    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setAdaptiveBrightness(Landroid/content/Context;ZI)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOpen"    # Z
    .param p3, "displayId"    # I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getBrightnessModeKey(I)Ljava/lang/String;

    move-result-object v1

    .line 30
    nop

    .line 29
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setScreenBrightness(Landroid/content/Context;IZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newBrightness"    # I
    .param p3, "isFinal"    # Z
    .param p4, "displayId"    # I

    .line 40
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 41
    const/4 p2, 0x1

    .line 43
    :cond_0
    sget v1, Lcom/xiaopeng/xuiservice/xapp/Config;->BRIGHTNESS_TO_MAX_VALUE:I

    if-le p2, v1, :cond_1

    .line 44
    sget p2, Lcom/xiaopeng/xuiservice/xapp/Config;->BRIGHTNESS_TO_MAX_VALUE:I

    .line 46
    :cond_1
    const-string v1, "DataRepository"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightness newBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " &isFinal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " &displayId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 49
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getBrightnessKey(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->autoBrightness()I

    move-result v1

    .line 51
    .local v1, "autoBrightnessDevice":I
    if-eq v1, v0, :cond_2

    if-nez v1, :cond_3

    .line 52
    :cond_2
    invoke-virtual {p0, p1, p4}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->isAdaptiveBrightness(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const-string v0, "DataRepository"

    const-string v2, "setScreenBrightness close ciu/xpu auto brightness!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p4}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->setAdaptiveBrightness(Landroid/content/Context;ZI)Z

    .line 57
    :cond_3
    return-void
.end method
