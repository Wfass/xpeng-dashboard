.class public Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;
.super Ljava/lang/Object;
.source "StatReporterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper$StatReporterHelperHolder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "DefaultEmpty"

.field private static final MUSIC_SOURCE_BLUETOOTH:Ljava/lang/String; = "blue"

.field private static final MUSIC_SOURCE_KUGOU:Ljava/lang/String; = "kugou"

.field private static final MUSIC_SOURCE_NETEASE:Ljava/lang/String; = "netease"

.field private static final MUSIC_SOURCE_QQ:Ljava/lang/String; = "qq"

.field private static final MUSIC_SOURCE_RADIO:Ljava/lang/String; = "radio"

.field private static final MUSIC_SOURCE_READ:Ljava/lang/String; = "read"

.field private static final MUSIC_SOURCE_USB:Ljava/lang/String; = "usb"

.field public static final SCREEN_TYPE_FULLSCREEN:Ljava/lang/String; = "fullScreen"

.field public static final SCREEN_TYPE_ONETHIRD:Ljava/lang/String; = "oneThird"

.field public static final SCREEN_TYPE_TWOTHRIDS:Ljava/lang/String; = "twoThirds"

.field private static final TAG:Ljava/lang/String; = "StatReporterHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;-><init>()V

    return-void
.end method

.method private getCurrentMusicType()Ljava/lang/String;
    .locals 2

    .line 156
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "qq"

    goto :goto_0

    :cond_0
    const-string v0, "radio"

    goto :goto_0

    :cond_1
    const-string v0, "read"

    goto :goto_0

    :cond_2
    const-string v0, "blue"

    goto :goto_0

    :cond_3
    const-string v0, "usb"

    goto :goto_0

    .line 161
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getMusicAccountType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper$StatReporterHelperHolder;->access$100()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    return-object v0
.end method

.method private getMusicAccountType()Ljava/lang/String;
    .locals 4

    .line 193
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->d()Laqt;

    move-result-object v0

    invoke-interface {v0}, Laqt;->j()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, -0x1

    const-string v3, "qq"

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "netease"

    goto :goto_1

    :cond_2
    const-string v3, "kugou"

    goto :goto_1

    :cond_3
    const-string v3, "usb"

    :cond_4
    :goto_1
    return-object v3
.end method

.method private getScreenMode()Ljava/lang/String;
    .locals 1

    .line 268
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "twoThirds"

    return-object v0

    .line 270
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oneThird"

    return-object v0

    :cond_1
    const-string v0, "fullScreen"

    return-object v0
.end method

.method private getTabSource()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAudioStateEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_6

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioStateEvent: source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatReporterHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 232
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const-string p1, "onAudioStateEvent: noThisType"

    .line 256
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "qq"

    goto :goto_0

    :cond_1
    const-string p1, "radio"

    goto :goto_0

    :cond_2
    const-string p1, "read"

    goto :goto_0

    :cond_3
    const-string p1, "blue"

    goto :goto_0

    :cond_4
    const-string p1, "usb"

    goto :goto_0

    .line 235
    :cond_5
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getMusicAccountType()Ljava/lang/String;

    move-result-object p1

    .line 260
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getScreenMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play"

    invoke-virtual {p0, v1, p1, v0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportMusicPlayEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_6
    :goto_1
    return-void
.end method

.method public reportAlbumPageDetailExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getScreenMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getCurrentMusicType()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getTabSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultEmpty"

    const-string v6, "DefaultEmpty"

    move-object v0, p1

    move-object v1, p2

    move-object v7, p3

    move-object v8, p4

    .line 105
    invoke-static/range {v0 .. v8}, Lcom/xiaopeng/musicradio/page/stat/PageExposureStat_DataLog;->musicPageExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "StatReporterHelper"

    const-string p2, "reportPageExposure: "

    .line 111
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 122
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/page/stat/FeatureOperationStat_DataLog;->musicFeatureOp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportFeatureUse: ErrorFeatureUse:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatReporterHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportMusicPlayEvent(Ljava/lang/String;)V
    .locals 2

    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getCurrentMusicType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getScreenMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/page/stat/FeatureOperationStat_DataLog;->musicPlayEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportFeatureUse: ErrorFeatureUse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatReporterHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportMusicPlayEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/musicradio/page/stat/FeatureOperationStat_DataLog;->musicPlayEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reportFeatureUse: ErrorFeatureUse:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatReporterHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getScreenMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getCurrentMusicType()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getTabSource()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DefaultEmpty"

    const-string v6, "DefaultEmpty"

    const-string v7, "DefaultEmpty"

    const-string v8, "DefaultEmpty"

    move-object v0, p1

    move-object v1, p2

    .line 74
    invoke-static/range {v0 .. v8}, Lcom/xiaopeng/musicradio/page/stat/PageExposureStat_DataLog;->musicPageExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "StatReporterHelper"

    const-string p2, "reportPageExposure: "

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public reportPageExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getScreenMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getCurrentMusicType()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getTabSource()Ljava/lang/String;

    move-result-object v4

    const-string v7, "DefaultEmpty"

    const-string v8, "DefaultEmpty"

    move-object v0, p1

    move-object v1, p2

    move-object v5, p3

    move-object v6, p4

    .line 93
    invoke-static/range {v0 .. v8}, Lcom/xiaopeng/musicradio/page/stat/PageExposureStat_DataLog;->musicPageExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "StatReporterHelper"

    const-string p2, "reportPageExposure: "

    .line 99
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
