.class public Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
.super Ljava/lang/Object;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/anr/Caton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private loggingEnabled:Z

.field private mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

.field private mCollectInterval:J

.field private mContext:Landroid/content/Context;

.field private mMonitorMode:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

.field private mThresholdTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 65
    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mThresholdTime:J

    const-wide/16 v0, 0x3e8

    .line 66
    iput-wide v0, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mCollectInterval:J

    .line 68
    sget-object v0, Lcom/xiaopeng/lib/bughunter/anr/Caton;->DEFAULT_MODE:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mMonitorMode:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->loggingEnabled:Z

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method build()Lcom/xiaopeng/lib/bughunter/anr/Caton;
    .locals 11

    .line 102
    new-instance v10, Lcom/xiaopeng/lib/bughunter/anr/Caton;

    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mThresholdTime:J

    iget-wide v4, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mCollectInterval:J

    iget-object v6, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mMonitorMode:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    iget-boolean v7, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->loggingEnabled:Z

    iget-object v8, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/lib/bughunter/anr/Caton;-><init>(Landroid/content/Context;JJLcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;ZLcom/xiaopeng/lib/bughunter/anr/Caton$Callback;Lcom/xiaopeng/lib/bughunter/anr/Caton$1;)V

    return-object v10
.end method

.method public callback(Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mCallback:Lcom/xiaopeng/lib/bughunter/anr/Caton$Callback;

    return-object p0
.end method

.method public collectInterval(J)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectIntervalMillis"
        }
    .end annotation

    .line 82
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mCollectInterval:J

    return-object p0
.end method

.method public loggingEnabled(Z)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 92
    iput-boolean p1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->loggingEnabled:Z

    return-object p0
.end method

.method public monitorMode(Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mMonitorMode:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    return-object p0
.end method

.method public thresholdTime(J)Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thresholdTimeMillis"
        }
    .end annotation

    .line 77
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$Builder;->mThresholdTime:J

    return-object p0
.end method
