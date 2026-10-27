.class public final Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
.super Ljava/lang/Object;
.source "TraceContextOrSamplingFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/TraceContextOrSamplingFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field sampledLocal:Z

.field type:I

.field value:Lbrave/propagation/SamplingFlags;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->sampledLocal:Z

    .line 225
    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 2
    .param p1, "extra"    # Ljava/lang/Object;

    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    .line 199
    :cond_0
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object p0

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extra == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final build()Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 4

    .line 206
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->value:Lbrave/propagation/SamplingFlags;

    check-cast v0, Lbrave/propagation/TraceContext;

    .line 208
    .local v0, "context":Lbrave/propagation/TraceContext;
    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    iget-object v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    invoke-static {v2}, Lbrave/internal/Lists;->ensureImmutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbrave/internal/InternalPropagation;->withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v1, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    .line 212
    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    invoke-static {v2, v3}, Lbrave/internal/Lists;->concatImmutableLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 211
    invoke-virtual {v1, v0, v2}, Lbrave/internal/InternalPropagation;->withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 214
    :goto_0
    new-instance v1, Lbrave/propagation/TraceContextOrSamplingFlags;

    iget v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->type:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    .end local v0    # "context":Lbrave/propagation/TraceContext;
    move-object v0, v1

    .line 215
    .local v0, "result":Lbrave/propagation/TraceContextOrSamplingFlags;
    goto :goto_1

    .line 217
    .end local v0    # "result":Lbrave/propagation/TraceContextOrSamplingFlags;
    :cond_1
    new-instance v0, Lbrave/propagation/TraceContextOrSamplingFlags;

    iget v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->type:I

    iget-object v2, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->value:Lbrave/propagation/SamplingFlags;

    iget-object v3, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    invoke-static {v3}, Lbrave/internal/Lists;->ensureImmutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lbrave/propagation/TraceContextOrSamplingFlags;-><init>(ILbrave/propagation/SamplingFlags;Ljava/util/List;)V

    .line 220
    .restart local v0    # "result":Lbrave/propagation/TraceContextOrSamplingFlags;
    :goto_1
    iget-boolean v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->sampledLocal:Z

    if-nez v1, :cond_2

    return-object v0

    .line 221
    :cond_2
    iget-object v1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->value:Lbrave/propagation/SamplingFlags;

    iget v1, v1, Lbrave/propagation/SamplingFlags;->flags:I

    or-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lbrave/propagation/TraceContextOrSamplingFlags;->withFlags(I)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v1

    return-object v1
.end method

.method public final context(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 2
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->type:I

    .line 156
    iput-object p1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->value:Lbrave/propagation/SamplingFlags;

    .line 157
    return-object p0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extra(Ljava/util/List;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags$Builder;"
        }
    .end annotation

    .line 188
    .local p1, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->extra:Ljava/util/List;

    .line 190
    return-object p0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extra == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampledLocal()Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 1

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->sampledLocal:Z

    .line 171
    return-object p0
.end method

.method public final samplingFlags(Lbrave/propagation/SamplingFlags;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 2
    .param p1, "samplingFlags"    # Lbrave/propagation/SamplingFlags;

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->type:I

    .line 178
    iput-object p1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->value:Lbrave/propagation/SamplingFlags;

    .line 179
    return-object p0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "samplingFlags == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final traceIdContext(Lbrave/propagation/TraceIdContext;)Lbrave/propagation/TraceContextOrSamplingFlags$Builder;
    .locals 2
    .param p1, "traceIdContext"    # Lbrave/propagation/TraceIdContext;

    .line 162
    if-eqz p1, :cond_0

    .line 163
    const/4 v0, 0x2

    iput v0, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->type:I

    .line 164
    iput-object p1, p0, Lbrave/propagation/TraceContextOrSamplingFlags$Builder;->value:Lbrave/propagation/SamplingFlags;

    .line 165
    return-object p0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "traceIdContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
