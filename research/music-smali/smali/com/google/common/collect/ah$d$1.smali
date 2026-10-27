.class Lcom/google/common/collect/ah$d$1;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ah$d;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/common/collect/as<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Lcom/google/common/collect/ah$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ah$d;Ljava/util/Comparator;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/google/common/collect/ah$d$1;->b:Lcom/google/common/collect/ah$d;

    iput-object p2, p0, Lcom/google/common/collect/ah$d$1;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/as;Lcom/google/common/collect/as;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/as<",
            "TT;>;",
            "Lcom/google/common/collect/as<",
            "TT;>;)I"
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lcom/google/common/collect/ah$d$1;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/as;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/google/common/collect/as;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1258
    check-cast p1, Lcom/google/common/collect/as;

    check-cast p2, Lcom/google/common/collect/as;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ah$d$1;->a(Lcom/google/common/collect/as;Lcom/google/common/collect/as;)I

    move-result p1

    return p1
.end method
