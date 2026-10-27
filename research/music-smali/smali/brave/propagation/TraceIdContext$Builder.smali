.class public final Lbrave/propagation/TraceIdContext$Builder;
.super Ljava/lang/Object;
.source "TraceIdContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/TraceIdContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lbrave/propagation/TraceIdContext;
    .locals 7

    .line 90
    iget-wide v4, p0, Lbrave/propagation/TraceIdContext$Builder;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v6, Lbrave/propagation/TraceIdContext;

    iget v1, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    iget-wide v2, p0, Lbrave/propagation/TraceIdContext$Builder;->a:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbrave/propagation/TraceIdContext;-><init>(IJJ)V

    return-object v6

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing: traceId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public debug(Z)Lbrave/propagation/TraceIdContext$Builder;
    .locals 1

    .line 85
    iget v0, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    invoke-static {p1, v0}, Lbrave/propagation/SamplingFlags;->a(ZI)I

    move-result p1

    iput p1, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    return-object p0
.end method

.method public sampled(Ljava/lang/Boolean;)Lbrave/propagation/TraceIdContext$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 77
    iget p1, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    and-int/lit8 p1, p1, -0x7

    iput p1, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lbrave/propagation/TraceIdContext$Builder;->sampled(Z)Lbrave/propagation/TraceIdContext$Builder;

    move-result-object p1

    return-object p1
.end method

.method public sampled(Z)Lbrave/propagation/TraceIdContext$Builder;
    .locals 1

    .line 70
    iget v0, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    invoke-static {p1, v0}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result p1

    iput p1, p0, Lbrave/propagation/TraceIdContext$Builder;->c:I

    return-object p0
.end method

.method public traceId(J)Lbrave/propagation/TraceIdContext$Builder;
    .locals 0

    .line 64
    iput-wide p1, p0, Lbrave/propagation/TraceIdContext$Builder;->b:J

    return-object p0
.end method

.method public traceIdHigh(J)Lbrave/propagation/TraceIdContext$Builder;
    .locals 0

    .line 58
    iput-wide p1, p0, Lbrave/propagation/TraceIdContext$Builder;->a:J

    return-object p0
.end method
