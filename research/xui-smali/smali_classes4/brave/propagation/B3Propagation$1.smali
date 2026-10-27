.class Lbrave/propagation/B3Propagation$1;
.super Lbrave/propagation/Propagation$Factory;
.source "B3Propagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/B3Propagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbrave/propagation/Propagation$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;
    .locals 1
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

    .line 16
    .local p1, "keyFactory":Lbrave/propagation/Propagation$KeyFactory;, "Lbrave/propagation/Propagation$KeyFactory<TK;>;"
    new-instance v0, Lbrave/propagation/B3Propagation;

    invoke-direct {v0, p1}, Lbrave/propagation/B3Propagation;-><init>(Lbrave/propagation/Propagation$KeyFactory;)V

    return-object v0
.end method

.method public supportsJoin()Z
    .locals 1

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "B3PropagationFactory"

    return-object v0
.end method
