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
.field final a:I

.field final b:J

.field final c:J

.field final d:J

.field final e:J

.field final f:Z


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
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
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 139
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result p2

    iput p2, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->a:I

    .line 140
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->b:J

    .line 141
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->c:J

    .line 142
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->localRootId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->d:J

    .line 143
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v0

    iput-wide v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->e:J

    .line 144
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->sampled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->f:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/TraceContext;

    check-cast p1, Lbrave/internal/recorder/PendingSpans$RealKey;

    invoke-virtual {p1}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrave/propagation/TraceContext;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 162
    :cond_1
    invoke-virtual {v0, p1}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 153
    iget v0, p0, Lbrave/internal/recorder/PendingSpans$RealKey;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans$RealKey;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/propagation/TraceContext;

    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeakReference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ClearedReference()"

    :goto_0
    return-object v0
.end method
