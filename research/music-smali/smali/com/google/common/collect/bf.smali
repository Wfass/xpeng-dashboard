.class public final Lcom/google/common/collect/bf;
.super Ljava/lang/Object;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/bf$a;,
        Lcom/google/common/collect/bf$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "+",
            "Ljava/util/Map<",
            "**>;+",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 587
    new-instance v0, Lcom/google/common/collect/bf$1;

    invoke-direct {v0}, Lcom/google/common/collect/bf$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/bf;->a:Lcom/google/common/base/h;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/be$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/google/common/collect/bf$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/bf$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Lcom/google/common/collect/be;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/be<",
            "***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 631
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/be;

    if-eqz v0, :cond_1

    .line 632
    check-cast p1, Lcom/google/common/collect/be;

    .line 633
    invoke-interface {p0}, Lcom/google/common/collect/be;->d()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/be;->d()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
