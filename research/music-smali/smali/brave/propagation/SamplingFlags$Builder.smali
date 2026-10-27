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
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    return-void
.end method

.method public static build(Ljava/lang/Boolean;)Lbrave/propagation/SamplingFlags;
    .locals 0
    .param p0    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    goto :goto_0

    :cond_0
    sget-object p0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    :goto_0
    return-object p0

    .line 137
    :cond_1
    sget-object p0, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object p0
.end method


# virtual methods
.method public build()Lbrave/propagation/SamplingFlags;
    .locals 1

    .line 141
    iget v0, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    invoke-static {v0}, Lbrave/propagation/SamplingFlags;->b(I)Lbrave/propagation/SamplingFlags;

    move-result-object v0

    return-object v0
.end method

.method public debug(Z)Lbrave/propagation/SamplingFlags$Builder;
    .locals 1

    .line 130
    iget v0, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    invoke-static {p1, v0}, Lbrave/propagation/SamplingFlags;->a(ZI)I

    move-result p1

    iput p1, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    return-object p0
.end method

.method public sampled(Ljava/lang/Boolean;)Lbrave/propagation/SamplingFlags$Builder;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 117
    iget p1, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    and-int/lit8 p1, p1, -0x7

    iput p1, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v0, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    invoke-static {p1, v0}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result p1

    iput p1, p0, Lbrave/propagation/SamplingFlags$Builder;->a:I

    return-object p0
.end method
