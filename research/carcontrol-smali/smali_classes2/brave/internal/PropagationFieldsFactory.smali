.class public abstract Lbrave/internal/PropagationFieldsFactory;
.super Lbrave/internal/ExtraFactory;
.source "PropagationFieldsFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lbrave/internal/PropagationFields;",
        ">",
        "Lbrave/internal/ExtraFactory<",
        "TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lbrave/internal/ExtraFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected consolidate(Lbrave/internal/PropagationFields;Lbrave/internal/PropagationFields;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;)V"
        }
    .end annotation

    .line 28
    invoke-virtual {p2, p1}, Lbrave/internal/PropagationFields;->putAllIfAbsent(Lbrave/internal/PropagationFields;)V

    return-void
.end method

.method protected bridge synthetic consolidate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lbrave/internal/PropagationFields;

    check-cast p2, Lbrave/internal/PropagationFields;

    invoke-virtual {p0, p1, p2}, Lbrave/internal/PropagationFieldsFactory;->consolidate(Lbrave/internal/PropagationFields;Lbrave/internal/PropagationFields;)V

    return-void
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

    .line 34
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1, p2}, Lbrave/internal/InternalPropagation;->withExtra(Lbrave/propagation/TraceContext;Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object p1

    return-object p1
.end method

.method protected abstract create()Lbrave/internal/PropagationFields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lbrave/internal/PropagationFieldsFactory;->create()Lbrave/internal/PropagationFields;

    move-result-object v0

    return-object v0
.end method

.method protected createExtraAndClaim(JJ)Lbrave/internal/PropagationFields;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)TP;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lbrave/internal/PropagationFieldsFactory;->create()Lbrave/internal/PropagationFields;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Lbrave/internal/PropagationFields;->tryToClaim(JJ)Z

    return-object v0
.end method

.method protected createExtraAndClaim(Lbrave/internal/PropagationFields;JJ)Lbrave/internal/PropagationFields;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;JJ)TP;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lbrave/internal/PropagationFieldsFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrave/internal/PropagationFields;

    .line 19
    invoke-virtual {p1, p2, p3, p4, p5}, Lbrave/internal/PropagationFields;->tryToClaim(JJ)Z

    return-object p1
.end method

.method protected bridge synthetic createExtraAndClaim(JJ)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lbrave/internal/PropagationFieldsFactory;->createExtraAndClaim(JJ)Lbrave/internal/PropagationFields;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic createExtraAndClaim(Ljava/lang/Object;JJ)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lbrave/internal/PropagationFields;

    invoke-virtual/range {p0 .. p5}, Lbrave/internal/PropagationFieldsFactory;->createExtraAndClaim(Lbrave/internal/PropagationFields;JJ)Lbrave/internal/PropagationFields;

    move-result-object p1

    return-object p1
.end method

.method protected tryToClaim(Lbrave/internal/PropagationFields;JJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;JJ)Z"
        }
    .end annotation

    .line 24
    invoke-virtual {p1, p2, p3, p4, p5}, Lbrave/internal/PropagationFields;->tryToClaim(JJ)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic tryToClaim(Ljava/lang/Object;JJ)Z
    .locals 0

    .line 6
    check-cast p1, Lbrave/internal/PropagationFields;

    invoke-virtual/range {p0 .. p5}, Lbrave/internal/PropagationFieldsFactory;->tryToClaim(Lbrave/internal/PropagationFields;JJ)Z

    move-result p1

    return p1
.end method
