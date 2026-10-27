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
    .locals 5
    .param p0, "traceIdHigh"    # J
    .param p2, "traceId"    # J
    .param p4, "spanId"    # J
    .param p6, "shared"    # Z

    .line 194
    const/4 v0, 0x1

    .line 195
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 196
    const/16 v2, 0x20

    ushr-long v3, p0, v2

    xor-long/2addr v3, p0

    long-to-int v3, v3

    xor-int/2addr v0, v3

    .line 197
    mul-int/2addr v0, v1

    .line 198
    ushr-long v3, p2, v2

    xor-long/2addr v3, p2

    long-to-int v3, v3

    xor-int/2addr v0, v3

    .line 199
    mul-int/2addr v0, v1

    .line 200
    ushr-long v2, p4, v2

    xor-long/2addr v2, p4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    .line 201
    mul-int/2addr v0, v1

    .line 202
    if-eqz p6, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    .line 203
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 208
    move-object v0, p1

    check-cast v0, Lbrave/internal/recorder/PendingSpans$RealKey;

    .line 209
    .local v0, "that":Lbrave/internal/recorder/PendingSpans$RealKey;
    invoke-virtual {v0}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbrave/propagation/TraceContext;

    .line 210
    .local v1, "thatContext":Lbrave/propagation/TraceContext;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 211
    :cond_0
    iget-wide v3, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->traceIdHigh:J

    invoke-virtual {v1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-wide v3, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->traceId:J

    .line 212
    invoke-virtual {v1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-wide v3, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->spanId:J

    .line 213
    invoke-virtual {v1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->shared:Z

    .line 214
    invoke-virtual {v1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    nop

    .line 211
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 190
    iget v0, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->hashCode:I

    return v0
.end method

.method set(JJJZ)V
    .locals 1
    .param p1, "traceIdHigh"    # J
    .param p3, "traceId"    # J
    .param p5, "spanId"    # J
    .param p7, "shared"    # Z

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

    move-result v0

    iput v0, p0, Lbrave/internal/recorder/PendingSpans$LookupKey;->hashCode:I

    .line 187
    return-void
.end method

.method set(Lbrave/propagation/TraceContext;)V
    .locals 8
    .param p1, "context"    # Lbrave/propagation/TraceContext;

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

    .line 179
    return-void
.end method
