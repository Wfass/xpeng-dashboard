.class public abstract Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
.super Ljava/lang/Object;
.source "StatCommonBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final EVENT_RECOMMEND_ID:I = 0x191

.field public static final EVENT_SCENE_SETTING_ID:I = 0x259

.field public static final EVENT_SCENE_SETTING_SWITCH_ID:I = 0x25b

.field public static final EVENT_Skill_ID:I = 0x1f5


# instance fields
.field private driveTemp:F

.field public eventId:I

.field public hwVersion:Ljava/lang/String;

.field public speechVersionCode:Ljava/lang/String;

.field public speechVersionName:Ljava/lang/String;

.field public speed:F

.field public startTime:J

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "eventId"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->eventId:I

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->startTime:J

    .line 49
    return-void
.end method


# virtual methods
.method public addHardwareId(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
    .locals 0
    .param p1, "hardwareId"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->userId:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public addSpeechVersionName(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
    .locals 0
    .param p1, "speechVersionName"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->speechVersionName:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public addhAppVersionCode(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
    .locals 0
    .param p1, "appVersionCode"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->speechVersionCode:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public addhwVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
    .locals 0
    .param p1, "hwVersion"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->hwVersion:Ljava/lang/String;

    .line 53
    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->startTime:J

    return-wide v0
.end method

.method public setDriveTemp(F)V
    .locals 0
    .param p1, "driveTemp"    # F

    .line 76
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->driveTemp:F

    .line 77
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 72
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->speed:F

    .line 73
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 85
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;->startTime:J

    .line 86
    return-void
.end method
