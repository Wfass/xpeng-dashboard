.class final Lbrave/propagation/B3Propagation$B3Extractor;
.super Ljava/lang/Object;
.source "B3Propagation.java"

# interfaces
.implements Lbrave/propagation/TraceContext$Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/B3Propagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "B3Extractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbrave/propagation/TraceContext$Extractor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final getter:Lbrave/propagation/Propagation$Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;"
        }
    .end annotation
.end field

.field final propagation:Lbrave/propagation/B3Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3Propagation<",
            "TK;>;"
        }
    .end annotation
.end field

.field final singleExtractor:Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/B3SinglePropagation$B3SingleExtractor<",
            "TC;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbrave/propagation/B3Propagation;Lbrave/propagation/Propagation$Getter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/B3Propagation<",
            "TK;>;",
            "Lbrave/propagation/Propagation$Getter<",
            "TC;TK;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lbrave/propagation/B3Propagation$B3Extractor;, "Lbrave/propagation/B3Propagation$B3Extractor<TC;TK;>;"
    .local p1, "propagation":Lbrave/propagation/B3Propagation;, "Lbrave/propagation/B3Propagation<TK;>;"
    .local p2, "getter":Lbrave/propagation/Propagation$Getter;, "Lbrave/propagation/Propagation$Getter<TC;TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    .line 109
    new-instance v0, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    iget-object v1, p1, Lbrave/propagation/B3Propagation;->b3Key:Ljava/lang/Object;

    invoke-direct {v0, v1, p2}, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;-><init>(Ljava/lang/Object;Lbrave/propagation/Propagation$Getter;)V

    iput-object v0, p0, Lbrave/propagation/B3Propagation$B3Extractor;->singleExtractor:Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    .line 110
    iput-object p2, p0, Lbrave/propagation/B3Propagation$B3Extractor;->getter:Lbrave/propagation/Propagation$Getter;

    .line 111
    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lbrave/propagation/TraceContextOrSamplingFlags;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lbrave/propagation/B3Propagation$B3Extractor;, "Lbrave/propagation/B3Propagation$B3Extractor<TC;TK;>;"
    .local p1, "carrier":Ljava/lang/Object;, "TC;"
    if-eqz p1, :cond_8

    .line 117
    iget-object v0, p0, Lbrave/propagation/B3Propagation$B3Extractor;->singleExtractor:Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;

    invoke-virtual {v0, p1}, Lbrave/propagation/B3SinglePropagation$B3SingleExtractor;->extract(Ljava/lang/Object;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v0

    .line 118
    .local v0, "extracted":Lbrave/propagation/TraceContextOrSamplingFlags;
    sget-object v1, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    invoke-virtual {v0, v1}, Lbrave/propagation/TraceContextOrSamplingFlags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lbrave/propagation/B3Propagation$B3Extractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v2, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v2, v2, Lbrave/propagation/B3Propagation;->sampledKey:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "sampled":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 124
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    .line 125
    :cond_3
    const/4 v3, 0x0

    .line 126
    .local v3, "sampledV":Ljava/lang/Boolean;
    :goto_2
    const-string v4, "1"

    iget-object v5, p0, Lbrave/propagation/B3Propagation$B3Extractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v6, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v6, v6, Lbrave/propagation/B3Propagation;->debugKey:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 128
    .local v4, "debug":Z
    iget-object v5, p0, Lbrave/propagation/B3Propagation$B3Extractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v6, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v6, v6, Lbrave/propagation/B3Propagation;->traceIdKey:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lbrave/propagation/Propagation$Getter;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "traceIdString":Ljava/lang/String;
    if-nez v5, :cond_4

    invoke-static {v3, v4}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Ljava/lang/Boolean;Z)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v2

    return-object v2

    .line 133
    :cond_4
    invoke-static {}, Lbrave/propagation/TraceContext;->newBuilder()Lbrave/propagation/TraceContext$Builder;

    move-result-object v6

    .line 134
    .local v6, "result":Lbrave/propagation/TraceContext$Builder;
    iget-object v7, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v7, v7, Lbrave/propagation/B3Propagation;->traceIdKey:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lbrave/propagation/TraceContext$Builder;->parseTraceId(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lbrave/propagation/B3Propagation$B3Extractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v8, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v8, v8, Lbrave/propagation/B3Propagation;->spanIdKey:Ljava/lang/Object;

    .line 135
    invoke-virtual {v6, v7, p1, v8}, Lbrave/propagation/TraceContext$Builder;->parseSpanId(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lbrave/propagation/B3Propagation$B3Extractor;->getter:Lbrave/propagation/Propagation$Getter;

    iget-object v8, p0, Lbrave/propagation/B3Propagation$B3Extractor;->propagation:Lbrave/propagation/B3Propagation;

    iget-object v8, v8, Lbrave/propagation/B3Propagation;->parentSpanIdKey:Ljava/lang/Object;

    .line 136
    invoke-virtual {v6, v7, p1, v8}, Lbrave/propagation/TraceContext$Builder;->parseParentId(Lbrave/propagation/Propagation$Getter;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 137
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lbrave/propagation/TraceContext$Builder;->sampled(Z)Lbrave/propagation/TraceContext$Builder;

    .line 138
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v6, v2}, Lbrave/propagation/TraceContext$Builder;->debug(Z)Lbrave/propagation/TraceContext$Builder;

    .line 139
    :cond_6
    invoke-virtual {v6}, Lbrave/propagation/TraceContext$Builder;->build()Lbrave/propagation/TraceContext;

    move-result-object v2

    invoke-static {v2}, Lbrave/propagation/TraceContextOrSamplingFlags;->create(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContextOrSamplingFlags;

    move-result-object v2

    return-object v2

    .line 141
    :cond_7
    sget-object v2, Lbrave/propagation/TraceContextOrSamplingFlags;->EMPTY:Lbrave/propagation/TraceContextOrSamplingFlags;

    return-object v2

    .line 114
    .end local v0    # "extracted":Lbrave/propagation/TraceContextOrSamplingFlags;
    .end local v1    # "sampled":Ljava/lang/String;
    .end local v3    # "sampledV":Ljava/lang/Boolean;
    .end local v4    # "debug":Z
    .end local v5    # "traceIdString":Ljava/lang/String;
    .end local v6    # "result":Lbrave/propagation/TraceContext$Builder;
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "carrier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
