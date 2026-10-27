.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field protected mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

.field protected mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/OutputStream;)V
    .locals 0
    .param p1    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    .line 22
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

    .line 53
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 54
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 59
    return-void
.end method

.method public setStatisticCounter(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;
    .locals 0
    .param p1    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    .line 26
    return-object p0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;->getDomain()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->addSentSize(Ljava/lang/String;J)V

    .line 35
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->write([BII)V

    .line 40
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    if-lez p3, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingOutputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;->getDomain()Ljava/lang/String;

    move-result-object p2

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->addSentSize(Ljava/lang/String;J)V

    .line 49
    :cond_0
    return-void
.end method
