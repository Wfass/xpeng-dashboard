.class final Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;
.super Lbrave/internal/PropagationFieldsFactory;
.source "ExtraFieldPropagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ExtraFieldPropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtraFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbrave/internal/PropagationFieldsFactory<",
        "Lbrave/propagation/ExtraFieldPropagation$Extra;",
        ">;"
    }
.end annotation


# instance fields
.field final fieldNames:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Lbrave/internal/PropagationFieldsFactory;-><init>()V

    .line 401
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->fieldNames:[Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
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

    .line 417
    .local p2, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Lbrave/propagation/TraceContext;->withExtra(Ljava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create()Lbrave/internal/PropagationFields;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->create()Lbrave/propagation/ExtraFieldPropagation$Extra;

    move-result-object v0

    return-object v0
.end method

.method protected create()Lbrave/propagation/ExtraFieldPropagation$Extra;
    .locals 2

    .line 409
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    iget-object v1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->fieldNames:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lbrave/propagation/ExtraFieldPropagation$Extra;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected create(Lbrave/propagation/ExtraFieldPropagation$Extra;)Lbrave/propagation/ExtraFieldPropagation$Extra;
    .locals 2
    .param p1, "parent"    # Lbrave/propagation/ExtraFieldPropagation$Extra;

    .line 413
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    iget-object v1, p0, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->fieldNames:[Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lbrave/propagation/ExtraFieldPropagation$Extra;-><init>(Lbrave/propagation/ExtraFieldPropagation$Extra;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 397
    invoke-virtual {p0}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->create()Lbrave/propagation/ExtraFieldPropagation$Extra;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 397
    check-cast p1, Lbrave/propagation/ExtraFieldPropagation$Extra;

    invoke-virtual {p0, p1}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->create(Lbrave/propagation/ExtraFieldPropagation$Extra;)Lbrave/propagation/ExtraFieldPropagation$Extra;

    move-result-object p1

    return-object p1
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lbrave/propagation/ExtraFieldPropagation$Extra;",
            ">;"
        }
    .end annotation

    .line 405
    const-class v0, Lbrave/propagation/ExtraFieldPropagation$Extra;

    return-object v0
.end method
