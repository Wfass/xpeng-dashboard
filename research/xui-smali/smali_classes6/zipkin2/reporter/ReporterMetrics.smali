.class public interface abstract Lzipkin2/reporter/ReporterMetrics;
.super Ljava/lang/Object;
.source "ReporterMetrics.java"


# static fields
.field public static final NOOP_METRICS:Lzipkin2/reporter/ReporterMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lzipkin2/reporter/ReporterMetrics$1;

    invoke-direct {v0}, Lzipkin2/reporter/ReporterMetrics$1;-><init>()V

    sput-object v0, Lzipkin2/reporter/ReporterMetrics;->NOOP_METRICS:Lzipkin2/reporter/ReporterMetrics;

    return-void
.end method


# virtual methods
.method public abstract incrementMessageBytes(I)V
.end method

.method public abstract incrementMessages()V
.end method

.method public abstract incrementMessagesDropped(Ljava/lang/Throwable;)V
.end method

.method public abstract incrementSpanBytes(I)V
.end method

.method public abstract incrementSpans(I)V
.end method

.method public abstract incrementSpansDropped(I)V
.end method

.method public abstract updateQueuedBytes(I)V
.end method

.method public abstract updateQueuedSpans(I)V
.end method
