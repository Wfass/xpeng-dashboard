.class public Lcom/xiaopeng/speech/protocol/bean/stats/SceneSettingStatisticsBean;
.super Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
.source "SceneSettingStatisticsBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final PAGE_CUSTOM:Ljava/lang/String; = "custom"

.field public static final PAGE_DIALOGUE:Ljava/lang/String; = "dialogue"

.field public static final PAGE_GUIDE:Ljava/lang/String; = "guide"

.field public static final PAGE_HOME:Ljava/lang/String; = "home"

.field public static final PAGE_INTERRUPTION:Ljava/lang/String; = "interruption"

.field public static final PAGE_KEY_WAKEUP:Ljava/lang/String; = "keyWakeup"

.field public static final PAGE_PROTOCOLPOLICY:Ljava/lang/String; = "protocolPolicy"

.field public static final PAGE_USERPROTOCOL:Ljava/lang/String; = "userProtocol"

.field public static final PAGE_VISIBLE:Ljava/lang/String; = "visible"

.field public static final PAGE_ZONE_LOCK:Ljava/lang/String; = "zoneLock"


# instance fields
.field private endTime:J

.field private enterTime:J

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x259

    .line 33
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;-><init>(I)V

    .line 34
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SceneSettingStatisticsBean;->endTime:J

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SceneSettingStatisticsBean;->page:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const/16 v0, 0x259

    .line 28
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;-><init>(I)V

    .line 29
    iput-wide p2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SceneSettingStatisticsBean;->enterTime:J

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SceneSettingStatisticsBean;->page:Ljava/lang/String;

    return-void
.end method
