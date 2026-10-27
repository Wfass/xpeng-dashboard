.class final Lcom/google/common/collect/TreeMultiset$b;
.super Ljava/lang/Object;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private g:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field private i:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 572
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 573
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    .line 574
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    int-to-long p1, p2

    .line 575
    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 576
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 577
    iput v0, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 579
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$b;)I
    .locals 0

    .line 557
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    return p0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$b;I)I
    .locals 0

    .line 557
    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    return p1
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/collect/TreeMultiset$b;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 594
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 595
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->i:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 596
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    .line 597
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 598
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 2

    .line 557
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    return-object p1
.end method

.method static synthetic b(Lcom/google/common/collect/TreeMultiset$b;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 603
    new-instance v0, Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 604
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->h:Lcom/google/common/collect/TreeMultiset$b;

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {p1, v0, p0}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 605
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    .line 606
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 607
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    return-object p0
.end method

.method private b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$b;

    :goto_0
    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset$b;)I
    .locals 0

    .line 557
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    return p0
.end method

.method private c()Lcom/google/common/collect/TreeMultiset$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 821
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    const/4 v1, 0x0

    .line 822
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    .line 823
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->h:Lcom/google/common/collect/TreeMultiset$b;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->i:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v1, v2}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)V

    .line 824
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v1, :cond_0

    .line 825
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    return-object v0

    .line 826
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v2, :cond_1

    return-object v1

    .line 828
    :cond_1
    iget v3, v1, Lcom/google/common/collect/TreeMultiset$b;->e:I

    iget v4, v2, Lcom/google/common/collect/TreeMultiset$b;->e:I

    if-lt v3, v4, :cond_2

    .line 829
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->h:Lcom/google/common/collect/TreeMultiset$b;

    .line 831
    invoke-direct {v1, v2}, Lcom/google/common/collect/TreeMultiset$b;->j(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v1

    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 832
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    iput-object v1, v2, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 833
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v2, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 834
    iget-wide v3, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long v0, v0

    sub-long/2addr v3, v0

    iput-wide v3, v2, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 835
    invoke-direct {v2}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    return-object v0

    .line 837
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->i:Lcom/google/common/collect/TreeMultiset$b;

    .line 838
    invoke-direct {v2, v1}, Lcom/google/common/collect/TreeMultiset$b;->i(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 839
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    iput-object v2, v1, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 840
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 841
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 842
    invoke-direct {v1}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->h:Lcom/google/common/collect/TreeMultiset$b;

    return-object p1
.end method

.method private c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/TreeMultiset$b;

    :goto_0
    return-object p1

    :cond_1
    if-nez v0, :cond_2

    return-object p0

    .line 959
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset$b;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->i:Lcom/google/common/collect/TreeMultiset$b;

    return-object p1
.end method

.method static synthetic d(Lcom/google/common/collect/TreeMultiset$b;)Ljava/lang/Object;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 871
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 872
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 873
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$b;->k(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$b;->k(Lcom/google/common/collect/TreeMultiset$b;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    return-void
.end method

.method static synthetic e(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->l(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$b;->l(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    return-void
.end method

.method static synthetic f(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    return-object p0
.end method

.method private f()V
    .locals 0

    .line 881
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->d()V

    .line 882
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->e()V

    return-void
.end method

.method private g()Lcom/google/common/collect/TreeMultiset$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 886
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->h()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->e()V

    return-object p0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b;->h()I

    move-result v0

    if-gez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b;->i()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 896
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->j()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    return-object v0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b;->h()I

    move-result v0

    if-lez v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b;->j()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 891
    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->i()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$b;->i:Lcom/google/common/collect/TreeMultiset$b;

    return-object p0
.end method

.method private h()I
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$b;->l(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$b;->l(Lcom/google/common/collect/TreeMultiset$b;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/google/common/collect/TreeMultiset$b;->h:Lcom/google/common/collect/TreeMultiset$b;

    return-object p0
.end method

.method private i()Lcom/google/common/collect/TreeMultiset$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->b(Z)V

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 910
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 911
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 912
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 913
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 914
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->f()V

    .line 915
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b;->e()V

    return-object v0
.end method

.method private i(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    .line 849
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    return-object p1

    .line 851
    :cond_0
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$b;->i(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 852
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 853
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$b;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 854
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method private j()Lcom/google/common/collect/TreeMultiset$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->b(Z)V

    .line 921
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 922
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 923
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 924
    iget-wide v1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    iput-wide v1, v0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 925
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 926
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->f()V

    .line 927
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$b;->e()V

    return-object v0
.end method

.method private j(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    .line 861
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    return-object p1

    .line 863
    :cond_0
    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$b;->j(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 864
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 865
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$b;->b:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 866
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method private static k(Lcom/google/common/collect/TreeMultiset$b;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "*>;)J"
        }
    .end annotation

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 932
    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    :goto_0
    return-wide v0
.end method

.method private static l(Lcom/google/common/collect/TreeMultiset$b;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 936
    :cond_0
    iget p0, p0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;)I"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    if-lez v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    :goto_1
    return v1

    .line 589
    :cond_3
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    return p1
.end method

.method a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_5

    .line 765
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v2, :cond_1

    .line 767
    aput v1, p5, v1

    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 769
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 774
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 776
    aget p1, p5, v1

    if-ne p1, p3, :cond_4

    if-nez p4, :cond_2

    .line 777
    aget p1, p5, v1

    if-eqz p1, :cond_2

    .line 778
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    .line 779
    aget p1, p5, v1

    if-nez p1, :cond_3

    .line 780
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 782
    :cond_3
    :goto_0
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 784
    :cond_4
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    :cond_5
    if-lez v0, :cond_b

    .line 786
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v2, :cond_7

    .line 788
    aput v1, p5, v1

    if-nez p3, :cond_6

    if-lez p4, :cond_6

    .line 790
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p0

    :cond_7
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 795
    invoke-virtual/range {v2 .. v7}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 797
    aget p1, p5, v1

    if-ne p1, p3, :cond_a

    if-nez p4, :cond_8

    .line 798
    aget p1, p5, v1

    if-eqz p1, :cond_8

    .line 799
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    goto :goto_1

    :cond_8
    if-lez p4, :cond_9

    .line 800
    aget p1, p5, v1

    if-nez p1, :cond_9

    .line 801
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 803
    :cond_9
    :goto_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    aget p3, p5, v1

    sub-int/2addr p4, p3

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 805
    :cond_a
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 809
    :cond_b
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    aput p1, p5, v1

    if-ne p3, p1, :cond_d

    if-nez p4, :cond_c

    .line 812
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->c()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 814
    :cond_c
    iget-wide p2, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    sub-int p1, p4, p1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 815
    iput p4, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    :cond_d
    return-object p0
.end method

.method a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    .line 620
    aput v2, p4, v2

    .line 621
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 623
    :cond_0
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    .line 625
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 626
    aget p1, p4, v2

    if-nez p1, :cond_1

    .line 627
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 629
    :cond_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 630
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$b;->e:I

    if-ne p1, v3, :cond_2

    move-object p1, p0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    if-lez v0, :cond_7

    .line 632
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_4

    .line 634
    aput v2, p4, v2

    .line 635
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 637
    :cond_4
    iget v3, v0, Lcom/google/common/collect/TreeMultiset$b;->e:I

    .line 639
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 640
    aget p1, p4, v2

    if-nez p1, :cond_5

    .line 641
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 643
    :cond_5
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 644
    iget-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    iget p1, p1, Lcom/google/common/collect/TreeMultiset$b;->e:I

    if-ne p1, v3, :cond_6

    move-object p1, p0

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    :goto_1
    return-object p1

    .line 648
    :cond_7
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    aput p1, p4, v2

    int-to-long p1, p1

    int-to-long v3, p3

    add-long/2addr p1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p1, p1, v5

    if-gtz p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    .line 650
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 651
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    .line 652
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    return-object p0
.end method

.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method b()I
    .locals 1

    .line 968
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    return v0
.end method

.method b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_0

    .line 662
    aput v1, p4, v1

    return-object p0

    .line 666
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    .line 668
    aget p1, p4, v1

    if-lez p1, :cond_2

    .line 669
    aget p1, p4, v1

    if-lt p3, p1, :cond_1

    .line 670
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 671
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    aget p3, p4, v1

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    goto :goto_0

    .line 673
    :cond_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long v2, p3

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 676
    :cond_2
    :goto_0
    aget p1, p4, v1

    if-nez p1, :cond_3

    move-object p1, p0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    if-lez v0, :cond_8

    .line 678
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_5

    .line 680
    aput v1, p4, v1

    return-object p0

    .line 684
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    .line 686
    aget p1, p4, v1

    if-lez p1, :cond_7

    .line 687
    aget p1, p4, v1

    if-lt p3, p1, :cond_6

    .line 688
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 689
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    aget p3, p4, v1

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    goto :goto_2

    .line 691
    :cond_6
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 694
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 698
    :cond_8
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    aput p1, p4, v1

    if-lt p3, p1, :cond_9

    .line 700
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->c()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    :cond_9
    sub-int/2addr p1, p3

    .line 702
    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    .line 703
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    int-to-long p3, p3

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    return-object p0
.end method

.method c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "TE;>;"
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 712
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_1

    .line 714
    aput v1, p4, v1

    if-lez p3, :cond_0

    .line 715
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$b;->b(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1

    .line 718
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->f:Lcom/google/common/collect/TreeMultiset$b;

    if-nez p3, :cond_2

    .line 720
    aget p1, p4, v1

    if-eqz p1, :cond_2

    .line 721
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    goto :goto_1

    :cond_2
    if-lez p3, :cond_3

    .line 722
    aget p1, p4, v1

    if-nez p1, :cond_3

    .line 723
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 726
    :cond_3
    :goto_1
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 727
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    :cond_4
    if-lez v0, :cond_9

    .line 729
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v0, :cond_6

    .line 731
    aput v1, p4, v1

    if-lez p3, :cond_5

    .line 732
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, p0

    :goto_2
    return-object p1

    .line 735
    :cond_6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$b;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$b;->g:Lcom/google/common/collect/TreeMultiset$b;

    if-nez p3, :cond_7

    .line 737
    aget p1, p4, v1

    if-eqz p1, :cond_7

    .line 738
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    goto :goto_3

    :cond_7
    if-lez p3, :cond_8

    .line 739
    aget p1, p4, v1

    if-nez p1, :cond_8

    .line 740
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/TreeMultiset$b;->c:I

    .line 743
    :cond_8
    :goto_3
    iget-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    aget p4, p4, v1

    sub-int/2addr p3, p4

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 744
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->g()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 748
    :cond_9
    iget p1, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    aput p1, p4, v1

    if-nez p3, :cond_a

    .line 750
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$b;->c()Lcom/google/common/collect/TreeMultiset$b;

    move-result-object p1

    return-object p1

    .line 752
    :cond_a
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    sub-int p1, p3, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$b;->d:J

    .line 753
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$b;->b:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 973
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$b;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
