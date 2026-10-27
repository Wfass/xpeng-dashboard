.class final Lcom/google/common/collect/an;
.super Lcom/google/common/collect/ar;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ar<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/an;

.field private static final serialVersionUID:J


# instance fields
.field private transient nullsFirst:Lcom/google/common/collect/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ar<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private transient nullsLast:Lcom/google/common/collect/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ar<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/common/collect/an;

    invoke-direct {v0}, Lcom/google/common/collect/an;-><init>()V

    sput-object v0, Lcom/google/common/collect/an;->a:Lcom/google/common/collect/an;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/google/common/collect/ar;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/google/common/collect/ar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ar<",
            "TS;>;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/google/common/collect/ay;->a:Lcom/google/common/collect/ay;

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/an;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
