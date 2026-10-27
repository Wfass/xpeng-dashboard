.class final Lbrave/internal/recorder/PendingSpans$RealKey;
.super Ljava/lang/ref/WeakReference;
.source "PendingSpans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/internal/recorder/PendingSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RealKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lbrave/propagation/TraceContext;",
        ">;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final localRootId:J

.field final sampled:Z

.field final spanId:J

.field final traceId:J

.field final traceIdHigh:J


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lbrave/propagation/TraceContext;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Lbrave/propagation/TraceContext;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 139
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result v0

    iput v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->hashCode:I

    .line 140
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->traceIdHigh:J

    .line 141
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->traceId:J

    .line 142
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->localRootId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->localRootId:J

    .line 143
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->spanId:J

    .line 144
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->sampled:Z

    .line 145
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/TraceContext;

    .local v0, "thisContext":Lbrave/propagation/TraceContext;
    move-object v1, p1

    check-cast v1, Lbrave/internal/recorder/PendingSpans$RealKey;

    invoke-virtual {v1}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbrave/propagation/TraceContext;

    .line 159
    .local v1, "thatContext":Lbrave/propagation/TraceContext;
    if-nez v0, :cond_1

    .line 160
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 162
    :cond_1
    invoke-virtual {v0, v1}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 153
    iget v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/TraceContext;

    .line 149
    .local v0, "context":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeakReference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "ClearedReference()"

    :goto_0
    return-object v1
.end method
