.class public final Lbrave/propagation/ExtraFieldPropagation$Factory;
.super Lbrave/propagation/Propagation$Factory;
.source "ExtraFieldPropagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/ExtraFieldPropagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field final delegate:Lbrave/propagation/Propagation$Factory;

.field final extraFactory:Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;

.field final fieldNames:[Ljava/lang/String;

.field final keyNames:[Ljava/lang/String;

.field final keyToField:[I


# direct methods
.method constructor <init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 248
    invoke-static {p3}, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyToField([Ljava/lang/String;)[I

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lbrave/propagation/ExtraFieldPropagation$Factory;-><init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method constructor <init>(Lbrave/propagation/Propagation$Factory;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lbrave/propagation/Propagation$Factory;-><init>()V

    .line 263
    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->delegate:Lbrave/propagation/Propagation$Factory;

    .line 264
    iput-object p4, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyToField:[I

    .line 265
    iput-object p2, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->fieldNames:[Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyNames:[Ljava/lang/String;

    .line 267
    new-instance p1, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;

    invoke-direct {p1, p2}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->extraFactory:Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;

    return-void
.end method

.method static keyToField([Ljava/lang/String;)[I
    .locals 2

    .line 256
    array-length p0, p0

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 257
    aput v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/ExtraFieldPropagation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$KeyFactory<",
            "TK;>;)",
            "Lbrave/propagation/ExtraFieldPropagation<",
            "TK;>;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyNames:[Ljava/lang/String;

    array-length v0, v0

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 283
    iget-object v3, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->keyNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Lbrave/propagation/Propagation$KeyFactory;->create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    new-instance v0, Lbrave/propagation/ExtraFieldPropagation;

    invoke-direct {v0, p0, p1, v1}, Lbrave/propagation/ExtraFieldPropagation;-><init>(Lbrave/propagation/ExtraFieldPropagation$Factory;Lbrave/propagation/Propagation$KeyFactory;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lbrave/propagation/ExtraFieldPropagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/ExtraFieldPropagation;

    move-result-object p1

    return-object p1
.end method

.method public decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;
    .locals 1

    .line 289
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->delegate:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0, p1}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->extraFactory:Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;

    invoke-virtual {v0, p1}, Lbrave/propagation/ExtraFieldPropagation$ExtraFactory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object p1

    return-object p1
.end method

.method public requires128BitTraceId()Z
    .locals 1

    .line 275
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->delegate:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0}, Lbrave/propagation/Propagation$Factory;->requires128BitTraceId()Z

    move-result v0

    return v0
.end method

.method public supportsJoin()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lbrave/propagation/ExtraFieldPropagation$Factory;->delegate:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0}, Lbrave/propagation/Propagation$Factory;->supportsJoin()Z

    move-result v0

    return v0
.end method
