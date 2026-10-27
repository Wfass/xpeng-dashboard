.class Lbrave/propagation/SamplingFlags$1;
.super Lbrave/internal/InternalPropagation;
.source "SamplingFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/SamplingFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lbrave/internal/InternalPropagation;-><init>()V

    return-void
.end method


# virtual methods
.method public flags(Lbrave/propagation/SamplingFlags;)I
    .locals 1
    .param p1, "flags"    # Lbrave/propagation/SamplingFlags;

    .line 22
    iget v0, p1, Lbrave/propagation/SamplingFlags;->flags:I

    return v0
.end method

.method public newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;
    .locals 14
    .param p1, "flags"    # I
    .param p2, "traceIdHigh"    # J
    .param p4, "traceId"    # J
    .param p6, "localRootId"    # J
    .param p8, "parentId"    # J
    .param p10, "spanId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJJ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext;"
        }
    .end annotation

    .line 28
    .local p12, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v13, Lbrave/propagation/TraceContext;

    move-object v0, v13

    move v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lbrave/propagation/TraceContext;-><init>(IJJJJJLjava/util/List;)V

    return-object v13
.end method

.method public withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;
    .locals 1
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext;"
        }
    .end annotation

    .line 32
    .local p2, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Lbrave/propagation/TraceContext;->withExtra(Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method public withFlags(Lbrave/propagation/TraceContext;I)Lbrave/propagation/TraceContext;
    .locals 1
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "flags"    # I

    .line 36
    invoke-virtual {p1, p2}, Lbrave/propagation/TraceContext;->withFlags(I)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method
