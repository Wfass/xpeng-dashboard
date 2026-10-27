.class public final Lbrave/propagation/SamplingFlags$Builder;
.super Ljava/lang/Object;
.source "SamplingFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/SamplingFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    .line 112
    return-void
.end method

.method public static build(Ljava/lang/Boolean;)Lbrave/propagation/SamplingFlags;
    .locals 1
    .param p0, "sampled"    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 136
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    goto :goto_0

    :cond_0
    sget-object v0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    :goto_0
    return-object v0

    .line 137
    :cond_1
    sget-object v0, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object v0
.end method


# virtual methods
.method public build()Lbrave/propagation/SamplingFlags;
    .locals 1

    .line 141
    iget v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    invoke-static {v0}, Lbrave/propagation/SamplingFlags;->toSamplingFlags(I)Lbrave/propagation/SamplingFlags;

    move-result-object v0

    return-object v0
.end method

.method public debug(Z)Lbrave/propagation/SamplingFlags$Builder;
    .locals 1
    .param p1, "debug"    # Z

    .line 130
    iget v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    invoke-static {p1, v0}, Lbrave/propagation/SamplingFlags;->debug(ZI)I

    move-result v0

    iput v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    .line 131
    return-object p0
.end method

.method public sampled(Ljava/lang/Boolean;)Lbrave/propagation/SamplingFlags$Builder;
    .locals 2
    .param p1, "sampled"    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 116
    if-nez p1, :cond_0

    .line 117
    iget v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    and-int/lit8 v0, v0, -0x7

    iput v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    .line 118
    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v1, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    invoke-static {v0, v1}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result v0

    iput v0, p0, Lbrave/propagation/SamplingFlags$Builder;->flags:I

    .line 121
    return-object p0
.end method
