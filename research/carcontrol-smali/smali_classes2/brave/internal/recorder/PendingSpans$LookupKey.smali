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
.field hashCode:I

.field shared:Z

.field spanId:J

.field traceId:J

.field traceIdHigh:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateHashCode(JJJZ)I
    .locals 3

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    long-to-int p0, p0

    const p1, 0xf4243

    xor-int/2addr p0, p1

    mul-int/2addr p0, p1

    ushr-long v1, p2, v0

    xor-long/2addr p2, v1

    long-to-int p2, p2

    xor-int/2addr p0, p2

    mul-int/2addr p0, p1

    ushr-long p2, p4, v0

    xor-long/2addr p2, p4

    long-to-int p2, p2

    xor-int/2addr p0, p2

    mul-int/2addr p0, p1

    if-eqz p6, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
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
    iget-wide v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->traceIdHigh:J

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->traceId:J

    .line 212
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->spanId:J

    .line 213
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->shared:Z

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
    iget v0, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->hashCode:I

    return v0
.end method

.method set(JJJZ)V
    .locals 0

    .line 182
    iput-wide p1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->traceIdHigh:J

    .line 183
    iput-wide p3, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->traceId:J

    .line 184
    iput-wide p5, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->spanId:J

    .line 185
    iput-boolean p7, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->shared:Z

    .line 186
    invoke-static/range {p1 .. p7}, Lbrave/internal/recorder/PendingSpans$LookupKey;->generateHashCode(JJJZ)I

    move-result p1

    iput p1, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->hashCode:I

    return-void
.end method

.method set(Lbrave/propagation/TraceContext;)V
    .locals 8

    .line 178
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v1

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v3

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v5

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbrave/internal/recorder/PendingSpans$LookupKey;->set(JJJZ)V

    return-void
.end method
