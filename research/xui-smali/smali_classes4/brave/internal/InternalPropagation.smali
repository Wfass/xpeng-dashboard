.class public abstract Lbrave/internal/InternalPropagation;
.super Ljava/lang/Object;
.source "InternalPropagation.java"


# static fields
.field public static final FLAG_DEBUG:I = 0x8

.field public static final FLAG_LOCAL_ROOT:I = 0x40

.field public static final FLAG_SAMPLED:I = 0x2

.field public static final FLAG_SAMPLED_LOCAL:I = 0x20

.field public static final FLAG_SAMPLED_SET:I = 0x4

.field public static final FLAG_SHARED:I = 0x10

.field public static instance:Lbrave/internal/InternalPropagation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sampled(ZI)I
    .locals 0
    .param p0, "sampled"    # Z
    .param p1, "flags"    # I

    .line 32
    if-eqz p0, :cond_0

    .line 33
    or-int/lit8 p1, p1, 0x6

    goto :goto_0

    .line 35
    :cond_0
    or-int/lit8 p1, p1, 0x4

    .line 36
    and-int/lit8 p1, p1, -0x3

    .line 38
    :goto_0
    return p1
.end method


# virtual methods
.method public abstract flags(Lbrave/propagation/SamplingFlags;)I
.end method

.method public abstract newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJJ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext;"
        }
    .end annotation
.end method

.method public abstract withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;
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
.end method

.method public abstract withFlags(Lbrave/propagation/TraceContext;I)Lbrave/propagation/TraceContext;
.end method
