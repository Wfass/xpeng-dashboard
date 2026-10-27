.class Lcom/google/common/collect/bi$c;
.super Ljava/lang/Object;
.source "TreeRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/bi$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/aw<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/bi;

.field private final b:Lcom/google/common/collect/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/au<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/common/collect/bi$c;)Lcom/google/common/collect/au;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/google/common/collect/bi$c;->b:Lcom/google/common/collect/au;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/google/common/collect/bi$c;->a:Lcom/google/common/collect/bi;

    iget-object v1, p0, Lcom/google/common/collect/bi$c;->b:Lcom/google/common/collect/au;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/bi;->a(Lcom/google/common/collect/au;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 481
    new-instance v0, Lcom/google/common/collect/bi$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bi$c$a;-><init>(Lcom/google/common/collect/bi$c;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 519
    instance-of v0, p1, Lcom/google/common/collect/aw;

    if-eqz v0, :cond_0

    .line 520
    check-cast p1, Lcom/google/common/collect/aw;

    .line 521
    invoke-virtual {p0}, Lcom/google/common/collect/bi$c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/aw;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/google/common/collect/bi$c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/bi$c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
