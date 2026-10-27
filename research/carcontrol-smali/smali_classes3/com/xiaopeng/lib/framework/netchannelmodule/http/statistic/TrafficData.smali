.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;
.super Ljava/lang/Object;
.source "TrafficData.java"


# instance fields
.field private mFailed:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fail"
    .end annotation
.end field

.field private mReceived:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rx"
    .end annotation
.end field

.field private mSent:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tx"
    .end annotation
.end field

.field private mSucceed:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "succ"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->reset()V

    return-void
.end method


# virtual methods
.method public addReceivedSize(J)V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    return-void
.end method

.method public addSentSize(J)V
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSent:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSent:J

    return-void
.end method

.method public failed()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mFailed:J

    return-wide v0
.end method

.method public increaseFailed(J)V
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mFailed:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mFailed:J

    .line 45
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    return-void
.end method

.method public increaseSucceed(J)V
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSucceed:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSucceed:J

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    return-void
.end method

.method public receivedSize()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSent:J

    .line 74
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    .line 75
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mFailed:J

    .line 76
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSucceed:J

    return-void
.end method

.method public sentSize()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSent:J

    return-wide v0
.end method

.method public setCount(JJ)V
    .locals 0

    .line 29
    iput-wide p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mFailed:J

    .line 30
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSucceed:J

    return-void
.end method

.method public setSize(JJ)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    .line 35
    iput-wide p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSent:J

    return-void
.end method

.method public succeed()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSucceed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ succeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSucceed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mFailed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mReceived:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->mSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
