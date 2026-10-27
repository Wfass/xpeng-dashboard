.class final Lcom/google/common/collect/TreeMultiset$c;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset$1;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 549
    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    return-void

    .line 547
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 553
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    return-void
.end method
