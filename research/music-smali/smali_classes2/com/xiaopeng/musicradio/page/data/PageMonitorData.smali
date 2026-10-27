.class public Lcom/xiaopeng/musicradio/page/data/PageMonitorData;
.super Ljava/lang/Object;
.source "PageMonitorData.java"


# instance fields
.field public endMonitorTime:J

.field public endRenderTime:J

.field public interactiveTime:J

.field private final pageKey:Ljava/lang/String;

.field public startTime:J

.field private step:I

.field private final stepTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->step:I

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->stepTimeMap:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->pageKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public step(Ljava/lang/String;)V
    .locals 4

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->startTime:J

    sub-long/2addr v0, v2

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->step:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v2, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->stepTimeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget p1, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->step:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/musicradio/page/data/PageMonitorData;->step:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
