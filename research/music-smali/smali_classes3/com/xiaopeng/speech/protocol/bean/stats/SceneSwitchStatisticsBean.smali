.class public Lcom/xiaopeng/speech/protocol/bean/stats/SceneSwitchStatisticsBean;
.super Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;
.source "SceneSwitchStatisticsBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field public static final NAME_ONESHOT:Ljava/lang/String; = "oneshot"

.field public static final NAME_SCENE:Ljava/lang/String; = "scene"

.field public static final NAME_USERPROTOCOL:Ljava/lang/String; = "userProtocol"

.field public static final NAME_WAKEUP:Ljava/lang/String; = "wakeup"


# instance fields
.field private name:Ljava/lang/String;

.field private state:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x25b

    .line 21
    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/protocol/bean/stats/StatCommonBean;-><init>(I)V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SceneSwitchStatisticsBean;->name:Ljava/lang/String;

    .line 23
    iput-boolean p2, p0, Lcom/xiaopeng/speech/protocol/bean/stats/SceneSwitchStatisticsBean;->state:Z

    return-void
.end method
