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
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1, p2}, Lbrave/internal/InternalPropagation;->withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object p1

    return-object p1
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
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 26
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v10

    .line 27
    invoke-virtual/range {p0 .. p0}, Lbrave/internal/ExtraFactory;->type()Ljava/lang/Class;

    move-result-object v12

    .line 29
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v13

    .line 30
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_0

    .line 32
    invoke-virtual {v6, v8, v9, v10, v11}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(JJ)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-virtual {v6, v7, v0}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    const/4 v0, 0x0

    .line 40
    invoke-virtual {v12, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v8

    move-wide v4, v10

    .line 42
    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->tryToClaim(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v15

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v8

    move-wide v4, v10

    .line 45
    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-ne v14, v4, :cond_5

    if-eqz v0, :cond_4

    if-ne v0, v15, :cond_3

    return-object v7

    .line 57
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0

    .line 60
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v6, v8, v9, v10, v11}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(JJ)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0

    :cond_5
    move v15, v4

    :goto_1
    if-ge v15, v14, :cond_9

    .line 70
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 71
    invoke-virtual {v12, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    move/from16 v17, v4

    goto :goto_3

    :cond_6
    if-nez v0, :cond_8

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v8

    move/from16 v17, v4

    move-object/from16 v16, v5

    move-wide v4, v10

    .line 74
    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->tryToClaim(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object/from16 v0, v16

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v8

    move-wide v4, v10

    .line 78
    invoke-virtual/range {v0 .. v5}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(Ljava/lang/Object;JJ)Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-static {v13}, Lbrave/internal/Lists;->ensureMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-interface {v1, v15, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move/from16 v17, v4

    move-object v1, v5

    .line 82
    invoke-virtual {v6, v1, v0}, Lbrave/internal/ExtraFactory;->consolidate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-static {v13}, Lbrave/internal/Lists;->ensureMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-interface {v1, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v15, v15, -0x1

    :goto_2
    move-object v13, v1

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    goto :goto_1

    :cond_9
    if-nez v0, :cond_a

    .line 90
    invoke-virtual {v6, v8, v9, v10, v11}, Lbrave/internal/ExtraFactory;->createExtraAndClaim(JJ)Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-static {v13}, Lbrave/internal/Lists;->ensureMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 92
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v0

    if-ne v13, v0, :cond_b

    return-object v7

    .line 95
    :cond_b
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lbrave/internal/ExtraFactory;->contextWithExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

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
