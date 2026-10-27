.class public final Lbrave/propagation/TraceContextOrSamplingFlags;
.super Ljava/lang/Object;
.source "TraceContextOrSamplingFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    }
.end annotation


# static fields
.field public static final DEBUG:Lbrave/propagation/TraceContextOrSamplingFlags;

.field public static final EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

.field public static final NOT_SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

.field public static final SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;


# instance fields
.field final a:I

.field final b:Lbrave/propagation/SamplingFlags;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    sget-object v1, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    sput-object v0, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    .line 42
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    sget-object v1, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    sput-object v0, Lbrave/propagation/TraceContextOrSamplingFlags;->NOT_SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

    .line 43
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    sget-object v1, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    sput-object v0, Lbrave/propagation/TraceContextOrSamplingFlags;->SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

    .line 44
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    sget-object v1, Lbrave/propagation/SamplingFlags;->DEBUG:Lbrave/propagation/SamplingFlags;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    sput-object v0, Lbrave/propagation/TraceContextOrSamplingFlags;->DEBUG:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-void
.end method

.method constructor <init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbrave/propagation/SamplingFlags;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 141
    iput p1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    .line 142
    iput-object p2, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    .line 143
    iput-object p3, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "extra == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lbrave/propagation/SamplingFlags;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 3

    .line 121
    sget-object v0, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    if-ne p0, v0, :cond_0

    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p0

    .line 122
    :cond_0
    sget-object v0, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    if-ne p0, v0, :cond_1

    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p0

    .line 123
    :cond_1
    sget-object v0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    if-ne p0, v0, :cond_2

    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->NOT_SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p0

    .line 124
    :cond_2
    sget-object v0, Lbrave/propagation/SamplingFlags;->DEBUG:Lbrave/propagation/SamplingFlags;

    if-ne p0, v0, :cond_3

    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->DEBUG:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p0

    .line 125
    :cond_3
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    return-object v0
.end method

.method public static create(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 3

    .line 112
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    return-object v0
.end method

.method public static create(Lbrave/propagation/TraceIdContext;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 3

    .line 116
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0, v1}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Boolean;Z)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 0
    .param p0    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 129
    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->DEBUG:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 130
    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object p0

    .line 131
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

    goto :goto_0

    :cond_2
    sget-object p0, Lbrave/propagation/TraceContextOrSamplingFlags;->NOT_SAMPLED:Lbrave/propagation/TraceContextOrSamplingFlags;

    :goto_0
    return-object p0
.end method

.method public static newBuilder()Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 1

    .line 47
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(I)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 3

    .line 249
    iget v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 257
    invoke-static {p1}, Lbrave/propagation/SamplingFlags;->b(I)Lbrave/propagation/SamplingFlags;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/SamplingFlags;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1

    .line 259
    :cond_0
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    iget v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    iget-object v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    return-object v0

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "programming error"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 254
    :cond_2
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->b(I)Lbrave/propagation/TraceIdContext;

    move-result-object p1

    .line 255
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    iget v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    iget-object v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    return-object v0

    .line 251
    :cond_3
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    check-cast v1, Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1, p1}, Lbrave/internal/InternalPropagation;->withFlags(Lbrave/propagation/TraceContext;I)Lbrave/propagation/TraceContext;

    move-result-object p1

    .line 252
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    iget v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    iget-object v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    return-object v0
.end method

.method b(I)Lbrave/propagation/TraceIdContext;
    .locals 8

    .line 265
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    check-cast v0, Lbrave/propagation/TraceIdContext;

    .line 266
    new-instance v7, Lbrave/propagation/TraceIdContext;

    iget-wide v3, v0, Lbrave/propagation/TraceIdContext;->g:J

    iget-wide v5, v0, Lbrave/propagation/TraceIdContext;->h:J

    move-object v1, v7

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lbrave/propagation/TraceIdContext;-><init>(IJJ)V

    return-object v7
.end method

.method public context()Lbrave/propagation/TraceContext;
    .locals 2
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 78
    iget v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    check-cast v0, Lbrave/propagation/TraceContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 230
    :cond_0
    instance-of v1, p1, Lbrave/propagation/TraceContextOrSamplingFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 231
    :cond_1
    check-cast p1, Lbrave/propagation/TraceContextOrSamplingFlags;

    .line 232
    iget v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    iget v3, p1, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iget-object v3, p1, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    iget-object p1, p1, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    .line 234
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final extra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 240
    iget v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 242
    iget-object v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 244
    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public sampled(Ljava/lang/Boolean;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->sampled(Z)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    iget-object p1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iget p1, p1, Lbrave/propagation/SamplingFlags;->a:I

    and-int/lit8 p1, p1, -0x5

    and-int/lit8 p1, p1, -0x3

    .line 67
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iget v0, v0, Lbrave/propagation/SamplingFlags;->a:I

    if-ne p1, v0, :cond_1

    return-object p0

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->a(I)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1
.end method

.method public sampled(Z)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 1

    .line 72
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iget v0, v0, Lbrave/propagation/SamplingFlags;->a:I

    invoke-static {p1, v0}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result p1

    .line 73
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iget v0, v0, Lbrave/propagation/SamplingFlags;->a:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->a(I)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object p1

    return-object p1
.end method

.method public sampled()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 52
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    invoke-virtual {v0}, Lbrave/propagation/SamplingFlags;->sampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final sampledLocal()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iget v0, v0, Lbrave/propagation/SamplingFlags;->a:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public samplingFlags()Lbrave/propagation/SamplingFlags;
    .locals 2
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 86
    iget v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final toBuilder()Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 2

    .line 99
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;

    invoke-direct {v0}, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;-><init>()V

    .line 100
    iget v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    iput v1, v0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->a:I

    .line 101
    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    iput-object v1, v0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->b:Lbrave/propagation/SamplingFlags;

    .line 102
    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    iput-object v1, v0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->c:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traceIdContext()Lbrave/propagation/TraceIdContext;
    .locals 2
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 82
    iget v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags;->b:Lbrave/propagation/SamplingFlags;

    check-cast v0, Lbrave/propagation/TraceIdContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
