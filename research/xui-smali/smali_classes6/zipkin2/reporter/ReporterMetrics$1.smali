.class Lzipkin2/reporter/ReporterMetrics$1;
.super Ljava/lang/Object;
.source "ReporterMetrics.java"

# interfaces
.implements Lzipkin2/reporter/ReporterMetrics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/ReporterMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public incrementMessageBytes(I)V
    .locals 0
    .param p1, "quantity"    # I

    .line 104
    return-void
.end method

.method public incrementMessages()V
    .locals 0

    .line 92
    return-void
.end method

.method public incrementMessagesDropped(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 95
    return-void
.end method

.method public incrementSpanBytes(I)V
    .locals 0
    .param p1, "quantity"    # I

    .line 101
    return-void
.end method

.method public incrementSpans(I)V
    .locals 0
    .param p1, "quantity"    # I

    .line 98
    return-void
.end method

.method public incrementSpansDropped(I)V
    .locals 0
    .param p1, "quantity"    # I

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "NoOpReporterMetrics"

    return-object v0
.end method

.method public updateQueuedBytes(I)V
    .locals 0
    .param p1, "update"    # I

    .line 113
    return-void
.end method

.method public updateQueuedSpans(I)V
    .locals 0
    .param p1, "update"    # I

    .line 110
    return-void
.end method
