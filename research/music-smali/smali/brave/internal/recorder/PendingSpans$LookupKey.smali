.class final Lbrave/internal/recorder/PendingSpans$LookupKey;
.super Ljava/lang/Object;
.source "PendingSpans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/recorder/PendingSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LookupKey"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:Z

.field e:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 208
    check-cast p1, Lbrave/internal/recorder/PendingSpans$RealKey;

    .line 209
    invoke-virtual {p1}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrave/propagation/TraceContext;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 211
    :cond_0
    iget-wide v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->a:J

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->b:J

    .line 212
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->c:J

    .line 213
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->d:Z

    .line 214
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 190
    iget v0, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->e:I

    return v0
.end method
