.class public Lbrave/propagation/SamplingFlags;
.super Ljava/lang/Object;
.source "SamplingFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/propagation/SamplingFlags$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEBUG:Lbrave/propagation/SamplingFlags;

.field static final DEBUG_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

.field public static final EMPTY:Lbrave/propagation/SamplingFlags;

.field static final EMPTY_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

.field public static final NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

.field static final NOT_SAMPLED_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

.field public static final SAMPLED:Lbrave/propagation/SamplingFlags;

.field static final SAMPLED_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;


# instance fields
.field final flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lbrave/propagation/SamplingFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v0, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    .line 15
    new-instance v0, Lbrave/propagation/SamplingFlags;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    .line 16
    new-instance v1, Lbrave/propagation/SamplingFlags;

    iget v2, v0, Lbrave/propagation/SamplingFlags;->flags:I

    or-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v1, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    .line 17
    new-instance v2, Lbrave/propagation/SamplingFlags;

    iget v3, v1, Lbrave/propagation/SamplingFlags;->flags:I

    or-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v2, Lbrave/propagation/SamplingFlags;->DEBUG:Lbrave/propagation/SamplingFlags;

    .line 20
    new-instance v3, Lbrave/propagation/SamplingFlags$1;

    invoke-direct {v3}, Lbrave/propagation/SamplingFlags$1;-><init>()V

    sput-object v3, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    .line 160
    new-instance v3, Lbrave/propagation/SamplingFlags;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v3, Lbrave/propagation/SamplingFlags;->EMPTY_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    .line 161
    new-instance v3, Lbrave/propagation/SamplingFlags;

    iget v0, v0, Lbrave/propagation/SamplingFlags;->flags:I

    or-int/2addr v0, v4

    invoke-direct {v3, v0}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v3, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    .line 162
    new-instance v0, Lbrave/propagation/SamplingFlags;

    iget v1, v1, Lbrave/propagation/SamplingFlags;->flags:I

    or-int/2addr v1, v4

    invoke-direct {v0, v1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v0, Lbrave/propagation/SamplingFlags;->SAMPLED_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    .line 163
    new-instance v0, Lbrave/propagation/SamplingFlags;

    iget v1, v2, Lbrave/propagation/SamplingFlags;->flags:I

    or-int/2addr v1, v4

    invoke-direct {v0, v1}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    sput-object v0, Lbrave/propagation/SamplingFlags;->DEBUG_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lbrave/propagation/SamplingFlags;->flags:I

    return-void
.end method

.method static debug(ZI)I
    .locals 0

    if-eqz p0, :cond_0

    or-int/lit8 p0, p1, 0xe

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p1, -0x9

    :goto_0
    return p0
.end method

.method static debug(I)Z
    .locals 1

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static toSamplingFlags(I)Lbrave/propagation/SamplingFlags;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/16 v0, 0xe

    if-eq p0, v0, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x24

    if-eq p0, v0, :cond_2

    const/16 v0, 0x26

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    .line 186
    new-instance v0, Lbrave/propagation/SamplingFlags;

    invoke-direct {v0, p0}, Lbrave/propagation/SamplingFlags;-><init>(I)V

    return-object v0

    .line 183
    :cond_0
    sget-object p0, Lbrave/propagation/SamplingFlags;->DEBUG_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 181
    :cond_1
    sget-object p0, Lbrave/propagation/SamplingFlags;->SAMPLED_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 179
    :cond_2
    sget-object p0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 177
    :cond_3
    sget-object p0, Lbrave/propagation/SamplingFlags;->EMPTY_SAMPLED_LOCAL:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 175
    :cond_4
    sget-object p0, Lbrave/propagation/SamplingFlags;->DEBUG:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 173
    :cond_5
    sget-object p0, Lbrave/propagation/SamplingFlags;->SAMPLED:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 171
    :cond_6
    sget-object p0, Lbrave/propagation/SamplingFlags;->NOT_SAMPLED:Lbrave/propagation/SamplingFlags;

    return-object p0

    .line 169
    :cond_7
    sget-object p0, Lbrave/propagation/SamplingFlags;->EMPTY:Lbrave/propagation/SamplingFlags;

    return-object p0
.end method


# virtual methods
.method public final debug()Z
    .locals 1

    .line 92
    iget v0, p0, Lbrave/propagation/SamplingFlags;->flags:I

    invoke-static {v0}, Lbrave/propagation/SamplingFlags;->debug(I)Z

    move-result v0

    return v0
.end method

.method public final sampled()Ljava/lang/Boolean;
    .locals 3
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 67
    iget v0, p0, Lbrave/propagation/SamplingFlags;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final sampledLocal()Z
    .locals 2

    .line 84
    iget v0, p0, Lbrave/propagation/SamplingFlags;->flags:I

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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SamplingFlags(sampled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lbrave/propagation/SamplingFlags;->sampled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampledLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lbrave/propagation/SamplingFlags;->sampledLocal()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lbrave/propagation/SamplingFlags;->debug()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
