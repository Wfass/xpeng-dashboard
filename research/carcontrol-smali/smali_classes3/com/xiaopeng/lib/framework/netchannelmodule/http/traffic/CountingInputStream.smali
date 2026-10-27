.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field protected mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

.field protected mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    if-eqz v1, :cond_0

    .line 32
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->addReceivedSize(Ljava/lang/String;J)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    .line 46
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    if-eqz p2, :cond_0

    .line 47
    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-interface {p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;->getDomain()Ljava/lang/String;

    move-result-object p3

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->addReceivedSize(Ljava/lang/String;J)V

    :cond_0
    return p1
.end method

.method public setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    return-object p0
.end method
