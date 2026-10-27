.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 760
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    if-nez v1, :cond_0

    return-object v0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method a(I)V
    .locals 1

    .line 686
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 687
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->b:I

    const/4 p1, 0x0

    .line 688
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    .line 689
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    const/4 p1, 0x0

    .line 690
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    return-void
.end method

.method a(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 694
    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->c:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    iput-object v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->b:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    const/4 v0, 0x1

    .line 695
    iput v0, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->i:I

    .line 698
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->b:I

    if-lez v1, :cond_0

    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    .line 699
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    sub-int/2addr v1, v0

    .line 700
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->b:I

    .line 701
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    iput-object v1, p1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 705
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 706
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    .line 709
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->b:I

    if-lez p1, :cond_1

    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    add-int/2addr v1, v0

    .line 710
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    sub-int/2addr p1, v0

    .line 711
    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->b:I

    .line 712
    iget p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    :cond_1
    const/4 p1, 0x4

    .line 728
    :goto_0
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->d:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 729
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    if-nez v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 732
    iget-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 733
    iget-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 734
    iget-object v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    iput-object v4, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 735
    iput-object v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 737
    iput-object v3, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->b:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 738
    iput-object v1, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->c:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 739
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->i:I

    add-int/2addr v4, v0

    iput v4, v2, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->i:I

    .line 740
    iput-object v2, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 741
    iput-object v2, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 744
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 745
    iget-object v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 746
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 748
    iput-object v1, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->c:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 749
    iget v4, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->i:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->i:I

    .line 750
    iput-object v3, v1, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;->a:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$d;

    .line 751
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 753
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$a;->c:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method
