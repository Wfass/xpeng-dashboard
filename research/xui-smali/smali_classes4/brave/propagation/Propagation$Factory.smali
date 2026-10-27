.class public abstract Lbrave/propagation/Propagation$Factory;
.super Ljava/lang/Object;
.source "Propagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/Propagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lbrave/propagation/Propagation$KeyFactory<",
            "TK;>;)",
            "Lbrave/propagation/Propagation<",
            "TK;>;"
        }
    .end annotation
.end method

.method public decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;
    .locals 0
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 64
    return-object p1
.end method

.method public requires128BitTraceId()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public supportsJoin()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method
