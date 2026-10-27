.class Lcom/google/android/flexbox/FlexboxLayoutManager$b;
.super Ljava/lang/Object;
.source "FlexboxLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/flexbox/FlexboxLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private hW:I

.field private ia:Z

.field private mAvailable:I

.field private mInfinite:Z

.field private mItemDirection:I

.field private mLastScrollDelta:I

.field private mLayoutDirection:I

.field private mOffset:I

.field private mPosition:I

.field private mScrollingOffset:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2931
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mItemDirection:I

    .line 2933
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V
    .locals 0

    .line 2891
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mOffset:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    return p1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$State;",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)Z"
        }
    .end annotation

    .line 2941
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    .line 2942
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2941
    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z
    .locals 0

    .line 2891
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z
    .locals 0

    .line 2891
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->ia:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mScrollingOffset:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z
    .locals 0

    .line 2891
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mInfinite:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z
    .locals 0

    .line 2891
    iput-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mInfinite:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mAvailable:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mPosition:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mScrollingOffset:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mOffset:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mAvailable:I

    return p1
.end method

.method static synthetic f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mLayoutDirection:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mItemDirection:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mLayoutDirection:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z
    .locals 0

    .line 2891
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->ia:Z

    return p0
.end method

.method static synthetic h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mPosition:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I
    .locals 0

    .line 2891
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mLastScrollDelta:I

    return p1
.end method

.method static synthetic i(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 2

    .line 2891
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 2

    .line 2891
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 0

    .line 2891
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mItemDirection:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutState{mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexLinePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->hW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScrollingOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mScrollingOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastScrollDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mLastScrollDelta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mItemDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
