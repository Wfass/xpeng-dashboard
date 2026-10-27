.class public Lcom/xiaopeng/speech/protocol/bean/stats/SkillStatisticsBean;
.super Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
.source "SkillStatisticsBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final PAGE_AIR:Ljava/lang/String; = "air"

.field public static final PAGE_ANSWER:Ljava/lang/String; = "answer"

.field public static final PAGE_CAR:Ljava/lang/String; = "car"

.field public static final PAGE_ENJOY:Ljava/lang/String; = "enjoy"

.field public static final PAGE_HOME:Ljava/lang/String; = "home"

.field public static final PAGE_MUSIC:Ljava/lang/String; = "music"

.field public static final PAGE_NAVI:Ljava/lang/String; = "navi"

.field public static final PAGE_PHONE:Ljava/lang/String; = "phone"

.field public static final PAGE_RECOMMEND:Ljava/lang/String; = "recommend"

.field public static final PAGE_SETTING:Ljava/lang/String; = "setting"

.field public static final PAGE_STATUS:Ljava/lang/String; = "status"


# instance fields
.field private endTime:J

.field private enterTime:J

.field private page:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "endTime"    # J
    .param p3, "page"    # Ljava/lang/String;

    .line 36
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;-><init>(I)V

    .line 37
    iput-wide p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SkillStatisticsBean;->endTime:J

    .line 38
    iput-object p3, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SkillStatisticsBean;->page:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "enterTime"    # J

    .line 31
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;-><init>(I)V

    .line 32
    iput-wide p2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SkillStatisticsBean;->enterTime:J

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SkillStatisticsBean;->page:Ljava/lang/String;

    .line 34
    return-void
.end method
