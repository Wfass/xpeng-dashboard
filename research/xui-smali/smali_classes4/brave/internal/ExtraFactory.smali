.class public abstract Lbrave/internal/ExtraFactory;
.super Ljava/lang/Object;
.source "ExtraFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    .local p0, "this":Lbrave/internal/ExtraFactory;, "Lbrave/internal/ExtraFactory<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract consolidate(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation
.end method

.method protected contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;
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

    .line 100
    .local p0, "this":Lbrave/internal/ExtraFactory;, "Lbrave/internal/ExtraFactory<TE;>;"
    .local p2, "immutableExtra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1, p2}, Lbrave/internal/InternalPropagation;->withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method protected abstract create(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method protected abstract createExtraAndClaim(JJ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)TE;"
        }
    .end annotation
.end method

.method protected abstract createExtraAndClaim(Ljava/lang/Object;JJ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;JJ)TE;"
        }
    .end annotation
.end method

.method public final decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;
    .locals 21
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .local p0, "this":Lbrave/internal/ExtraFactory;, "Lbrave/internal/ExtraFactory<TE;>;"
    move-object/from16 v8, p0

    .line 26
    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v10

    .local v10, "traceId":J
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v12

    .line 27
    .local v12, "spanId":J
    invoke-virtual/range {p0 .. p0}, Lbrave/internal/ExtraFactory;->type()Ljava/lang/Class;

    move-result-object v14

    .line 29
    .local v14, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v15

    .line 30
    .local v15, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 31
    .local v6, "extraSize":I
    if-nez v6, :cond_0

    .line 32
    invoke-virtual {v8, v10, v11, v12, v13}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(JJ)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 33
    .end local v15    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v0, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {v8, v9, v0}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v1

    return-object v1

    .line 36
    .end local v0    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v15    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 37
    .local v7, "first":Ljava/lang/Object;
    const/16 v16, 0x0

    .line 40
    .local v16, "consolidated":Ljava/lang/Object;, "TE;"
    invoke-virtual {v14, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    move-object v1, v7

    .line 42
    .local v1, "existing":Ljava/lang/Object;, "TE;"
    move-object v0, v8

    move-wide v2, v10

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->tryToClaim(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    move-object/from16 v16, v1

    .line 53
    move v0, v6

    move-object/from16 v17, v15

    move-object v15, v7

    goto :goto_0

    .line 45
    :cond_1
    move-object v2, v8

    move-object v3, v1

    move-wide v4, v10

    move v0, v6

    move-object/from16 v17, v15

    move-object v15, v7

    move-wide v6, v12

    .end local v6    # "extraSize":I
    .end local v7    # "first":Ljava/lang/Object;
    .local v0, "extraSize":I
    .local v15, "first":Ljava/lang/Object;
    .local v17, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {v2 .. v7}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v16

    .line 53
    .end local v1    # "existing":Ljava/lang/Object;, "TE;"
    move-object/from16 v1, v16

    goto :goto_0

    .end local v0    # "extraSize":I
    .end local v17    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v6    # "extraSize":I
    .restart local v7    # "first":Ljava/lang/Object;
    .local v15, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    move v0, v6

    move-object/from16 v17, v15

    move-object v15, v7

    move-object/from16 v1, v16

    .end local v6    # "extraSize":I
    .end local v7    # "first":Ljava/lang/Object;
    .end local v16    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v0    # "extraSize":I
    .local v1, "consolidated":Ljava/lang/Object;, "TE;"
    .local v15, "first":Ljava/lang/Object;
    .restart local v17    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    .line 54
    if-eqz v1, :cond_4

    .line 55
    if-ne v1, v15, :cond_3

    return-object v9

    .line 57
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v2

    return-object v2

    .line 60
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .end local v17    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v2, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v8, v10, v11, v12, v13}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(JJ)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v3

    return-object v3

    .line 69
    .end local v2    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v17    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    move v7, v0

    move-object v5, v1

    move v0, v6

    move-object/from16 v4, v17

    .end local v1    # "consolidated":Ljava/lang/Object;, "TE;"
    .end local v17    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v0, "i":I
    .local v4, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v5, "consolidated":Ljava/lang/Object;, "TE;"
    .local v7, "extraSize":I
    :goto_1
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    if-ge v2, v7, :cond_9

    .line 70
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 71
    .local v3, "next":Ljava/lang/Object;
    invoke-virtual {v14, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 69
    .end local v3    # "next":Ljava/lang/Object;
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    goto/16 :goto_2

    .line 72
    .restart local v3    # "next":Ljava/lang/Object;
    :cond_6
    move-object v1, v3

    .line 73
    .local v1, "existing":Ljava/lang/Object;, "TE;"
    if-nez v5, :cond_8

    .line 74
    move-object v0, v8

    move-object/from16 v18, v1

    .end local v1    # "existing":Ljava/lang/Object;, "TE;"
    .local v18, "existing":Ljava/lang/Object;, "TE;"
    move v6, v2

    move-object/from16 v16, v3

    move-wide v2, v10

    .end local v2    # "i":I
    .end local v3    # "next":Ljava/lang/Object;
    .local v6, "i":I
    .local v16, "next":Ljava/lang/Object;
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object v14, v4

    move-object v15, v5

    move-wide v4, v12

    .end local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    .local v14, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v15, "consolidated":Ljava/lang/Object;, "TE;"
    .local v19, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local v20, "first":Ljava/lang/Object;
    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->tryToClaim(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    move-object/from16 v0, v18

    .line 76
    .end local v15    # "consolidated":Ljava/lang/Object;, "TE;"
    .local v0, "consolidated":Ljava/lang/Object;, "TE;"
    nop

    .line 69
    move-object v5, v0

    move v2, v6

    move-object v4, v14

    goto :goto_2

    .line 78
    .end local v0    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v15    # "consolidated":Ljava/lang/Object;, "TE;"
    :cond_7
    move-object v0, v8

    move-object/from16 v1, v18

    move-wide v2, v10

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .end local v15    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v0    # "consolidated":Ljava/lang/Object;, "TE;"
    invoke-static {v14}, Lbrave/internal/Lists;->ensureMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 80
    .end local v14    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v1, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-object v5, v0

    move-object v4, v1

    move v2, v6

    goto :goto_2

    .line 82
    .end local v0    # "consolidated":Ljava/lang/Object;, "TE;"
    .end local v6    # "i":I
    .end local v16    # "next":Ljava/lang/Object;
    .end local v18    # "existing":Ljava/lang/Object;, "TE;"
    .end local v19    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local v20    # "first":Ljava/lang/Object;
    .local v1, "existing":Ljava/lang/Object;, "TE;"
    .restart local v2    # "i":I
    .restart local v3    # "next":Ljava/lang/Object;
    .restart local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    .local v14, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local v15, "first":Ljava/lang/Object;
    :cond_8
    move-object/from16 v18, v1

    move v6, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object v14, v4

    move-object v15, v5

    .end local v1    # "existing":Ljava/lang/Object;, "TE;"
    .end local v2    # "i":I
    .end local v3    # "next":Ljava/lang/Object;
    .end local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v6    # "i":I
    .local v14, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v15, "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v16    # "next":Ljava/lang/Object;
    .restart local v18    # "existing":Ljava/lang/Object;, "TE;"
    .restart local v19    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .restart local v20    # "first":Ljava/lang/Object;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v15}, Lbrave/internal/ExtraFactory;->consolidate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .end local v18    # "existing":Ljava/lang/Object;, "TE;"
    .local v0, "existing":Ljava/lang/Object;, "TE;"
    invoke-static {v14}, Lbrave/internal/Lists;->ensureMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 84
    .end local v14    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v1, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    add-int/lit8 v7, v7, -0x1

    .line 86
    add-int/lit8 v2, v6, -0x1

    .line 69
    .end local v0    # "existing":Ljava/lang/Object;, "TE;"
    .end local v6    # "i":I
    .end local v16    # "next":Ljava/lang/Object;
    .restart local v2    # "i":I
    move-object v4, v1

    .end local v1    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v15    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    :goto_2
    const/4 v0, 0x1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .local v1, "i":I
    move v6, v0

    move v0, v1

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    goto :goto_1

    .line 89
    .end local v1    # "i":I
    .end local v19    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .end local v20    # "first":Ljava/lang/Object;
    .local v14, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local v15, "first":Ljava/lang/Object;
    :cond_9
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    move-object v14, v4

    move-object v15, v5

    .end local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    .local v14, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v15, "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v19    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .restart local v20    # "first":Ljava/lang/Object;
    if-nez v15, :cond_a

    .line 90
    invoke-virtual {v8, v10, v11, v12, v13}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(JJ)Ljava/lang/Object;

    move-result-object v5

    .line 91
    .end local v15    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    invoke-static {v14}, Lbrave/internal/Lists;->ensureMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 92
    .end local v14    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    move-object v14, v4

    move-object v15, v5

    .end local v4    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "consolidated":Ljava/lang/Object;, "TE;"
    .restart local v14    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v15    # "consolidated":Ljava/lang/Object;, "TE;"
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v0

    if-ne v14, v0, :cond_b

    return-object v9

    .line 95
    :cond_b
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method protected abstract tryToClaim(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;JJ)Z"
        }
    .end annotation
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end method
