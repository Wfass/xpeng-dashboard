.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Lcom/google/android/flexbox/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$b;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$a;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final hL:Landroid/graphics/Rect;


# instance fields
.field private hM:Z

.field private hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

.field private hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

.field private hP:Landroid/support/v7/widget/OrientationHelper;

.field private hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field private hR:I

.field private hS:I

.field private hT:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private hU:Landroid/view/View;

.field private hV:I

.field private mAlignItems:I

.field private final mContext:Landroid/content/Context;

.field private mFlexDirection:I

.field private mFlexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;"
        }
    .end annotation
.end field

.field private mFlexLinesResult:Lcom/google/android/flexbox/c$a;

.field private mFlexWrap:I

.field private final mFlexboxHelper:Lcom/google/android/flexbox/c;

.field private mIsRtl:Z

.field private mJustifyContent:I

.field private mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mState:Landroid/support/v7/widget/RecyclerView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    nop

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hL:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 218
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/google/android/flexbox/c;

    invoke-direct {v0, p0}, Lcom/google/android/flexbox/c;-><init>(Lcom/google/android/flexbox/a;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 123
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 150
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 155
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hR:I

    .line 160
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hS:I

    .line 174
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    .line 187
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    .line 193
    new-instance v0, Lcom/google/android/flexbox/c$a;

    invoke-direct {v0}, Lcom/google/android/flexbox/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    .line 219
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 220
    invoke-virtual {p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 221
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 222
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 223
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 241
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/google/android/flexbox/c;

    invoke-direct {v0, p0}, Lcom/google/android/flexbox/c;-><init>(Lcom/google/android/flexbox/a;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 123
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 150
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 155
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hR:I

    .line 160
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hS:I

    .line 174
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    .line 187
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    .line 193
    new-instance v0, Lcom/google/android/flexbox/c$a;

    invoke-direct {v0}, Lcom/google/android/flexbox/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    .line 242
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    .line 243
    iget p3, p2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 252
    :pswitch_0
    iget-boolean p2, p2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_0

    .line 253
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 255
    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-boolean p2, p2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_1

    .line 246
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    goto :goto_0

    .line 248
    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 250
    nop

    .line 259
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    .line 260
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 261
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 262
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 263
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1916
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_4

    .line 1919
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cg()V

    .line 1920
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 1922
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1923
    move v0, v2

    goto :goto_0

    .line 1922
    :cond_1
    nop

    .line 1923
    move v0, v1

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    .line 1924
    if-gez p1, :cond_2

    goto :goto_2

    .line 1928
    :cond_2
    :goto_1
    move v2, v3

    goto :goto_2

    .line 1926
    :cond_3
    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_1

    .line 1928
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1930
    invoke-direct {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(II)V

    .line 1932
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    .line 1933
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-direct {p0, p2, p3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    add-int/2addr v4, p2

    .line 1934
    if-gez v4, :cond_5

    .line 1935
    return v1

    .line 1938
    :cond_5
    if-eqz v0, :cond_6

    .line 1939
    if-le v3, v4, :cond_7

    neg-int p1, v2

    mul-int/2addr p1, v4

    goto :goto_3

    .line 1941
    :cond_6
    if-le v3, v4, :cond_7

    mul-int p1, v2, v4

    .line 1943
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1944
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1945
    return p1

    .line 1917
    :cond_8
    :goto_4
    return v1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 9

    .line 1259
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1260
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1261
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1263
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 1265
    :cond_1
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    .line 1266
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v2

    .line 1267
    const/4 v3, 0x0

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    .line 1269
    :goto_0
    if-gtz v2, :cond_2

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1270
    invoke-static {p3, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1271
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/b;

    .line 1272
    iget v6, v5, Lcom/google/android/flexbox/b;->hy:I

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1273
    invoke-direct {p0, v5, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/b;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1275
    if-nez v4, :cond_3

    iget-boolean v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v6, :cond_3

    .line 1276
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/flexbox/b;->cb()I

    move-result v7

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_1

    .line 1278
    :cond_3
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/flexbox/b;->cb()I

    move-result v7

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1281
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/flexbox/b;->cb()I

    move-result v5

    sub-int/2addr v2, v5

    .line 1282
    goto :goto_0

    .line 1283
    :cond_4
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1284
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    if-eq p2, v1, :cond_6

    .line 1285
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1286
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    if-gez p2, :cond_5

    .line 1287
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1289
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 1291
    :cond_6
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    .line 2328
    nop

    .line 2329
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2330
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return p0
.end method

.method private a(Lcom/google/android/flexbox/b;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 1

    .line 1420
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/b;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    return p1

    .line 1423
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Lcom/google/android/flexbox/b;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    return p1
.end method

.method private a(IIZ)Landroid/view/View;
    .locals 3

    .line 2475
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2476
    :goto_0
    if-eq p1, p2, :cond_2

    .line 2477
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2478
    invoke-direct {p0, v1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2479
    return-object v1

    .line 2476
    :cond_1
    add-int/2addr p1, v0

    goto :goto_0

    .line 2482
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/google/android/flexbox/b;)Landroid/view/View;
    .locals 5

    .line 2104
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2105
    nop

    .line 2106
    iget p2, p2, Lcom/google/android/flexbox/b;->mItemCount:I

    .line 2107
    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 2108
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2109
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2110
    goto :goto_2

    .line 2112
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2113
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2114
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2115
    goto :goto_1

    .line 2118
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2119
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 2120
    nop

    .line 2107
    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2124
    :cond_3
    return-object p1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V
    .locals 2

    .line 1295
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1296
    return-void

    .line 1298
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    goto :goto_0

    .line 1302
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 1304
    :goto_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$a;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    return-void

    .line 1032
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1038
    return-void

    .line 1043
    :cond_1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 1044
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1045
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1046
    return-void
.end method

.method private a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;ZZ)V
    .locals 2

    .line 1679
    if-eqz p3, :cond_0

    .line 1680
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cf()V

    goto :goto_0

    .line 1682
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 1684
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    .line 1685
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_1

    .line 1687
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1688
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1687
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1690
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1691
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1692
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1693
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1694
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/high16 v1, -0x80000000

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1695
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1697
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1698
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 1699
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 1700
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    .line 1701
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/b;

    .line 1702
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->i(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 1703
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/flexbox/b;->getItemCount()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1705
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$a;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z
    .locals 5

    .line 1050
    nop

    .line 1051
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    .line 1054
    :cond_0
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_3

    .line 1063
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1064
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v0, v0, Lcom/google/android/flexbox/c;->hC:[I

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v4

    aget v0, v0, v4

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1065
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1066
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1067
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result p3

    add-int/2addr p1, p3

    .line 1066
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1068
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z

    .line 1069
    invoke-static {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1070
    return v4

    .line 1073
    :cond_2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_a

    .line 1074
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1075
    if-eqz p1, :cond_7

    .line 1076
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1077
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 1078
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 1079
    return v4

    .line 1081
    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1082
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p3, v0

    .line 1083
    if-gez p3, :cond_4

    .line 1084
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1085
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z

    .line 1086
    return v4

    .line 1089
    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1090
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p3, v0

    .line 1091
    if-gez p3, :cond_5

    .line 1092
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1093
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z

    .line 1094
    return v4

    .line 1096
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1097
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1098
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1099
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 1096
    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1100
    goto :goto_1

    .line 1101
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    .line 1102
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 1103
    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ge p3, p1, :cond_8

    move v1, v4

    nop

    :cond_8
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z

    .line 1105
    :cond_9
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 1107
    :goto_1
    return v4

    .line 1111
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p1, :cond_b

    .line 1112
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1113
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result p3

    sub-int/2addr p1, p3

    .line 1112
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    goto :goto_2

    .line 1115
    :cond_b
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1118
    :goto_2
    return v4

    .line 1055
    :cond_c
    :goto_3
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 1056
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 1060
    return v1

    .line 1052
    :cond_d
    :goto_4
    return v1
.end method

.method private b(Landroid/view/View;)I
    .locals 1

    .line 2334
    nop

    .line 2335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2336
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return p0
.end method

.method private b(Lcom/google/android/flexbox/b;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1428
    nop

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v1

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v2

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v3

    .line 1434
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    .line 1435
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1436
    iget v5, v8, Lcom/google/android/flexbox/b;->hr:I

    sub-int/2addr v4, v5

    .line 1438
    :cond_0
    move v9, v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v10

    .line 1444
    nop

    .line 1445
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_0

    .line 1473
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1459
    :pswitch_0
    iget v4, v8, Lcom/google/android/flexbox/b;->mItemCount:I

    if-eqz v4, :cond_1

    .line 1460
    iget v4, v8, Lcom/google/android/flexbox/b;->hp:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v7, v8, Lcom/google/android/flexbox/b;->mItemCount:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_0

    .line 1463
    :cond_1
    move v4, v5

    :goto_0
    int-to-float v1, v1

    div-float v6, v4, v6

    add-float/2addr v1, v6

    .line 1464
    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    .line 1465
    goto :goto_3

    .line 1467
    :pswitch_1
    int-to-float v1, v1

    .line 1468
    iget v4, v8, Lcom/google/android/flexbox/b;->mItemCount:I

    if-eq v4, v11, :cond_2

    iget v4, v8, Lcom/google/android/flexbox/b;->mItemCount:I

    sub-int/2addr v4, v11

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1469
    :goto_1
    iget v6, v8, Lcom/google/android/flexbox/b;->hp:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float v4, v6, v4

    .line 1470
    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 1471
    goto :goto_3

    .line 1455
    :pswitch_2
    int-to-float v1, v1

    iget v4, v8, Lcom/google/android/flexbox/b;->hp:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    .line 1456
    sub-int v2, v3, v2

    int-to-float v2, v2

    iget v4, v8, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 1457
    goto :goto_2

    .line 1451
    :pswitch_3
    iget v4, v8, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 1452
    iget v3, v8, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    .line 1453
    nop

    .line 1476
    move v4, v5

    move/from16 v22, v2

    move v2, v1

    move/from16 v1, v22

    goto :goto_3

    .line 1447
    :pswitch_4
    int-to-float v1, v1

    .line 1448
    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 1449
    nop

    .line 1476
    :goto_2
    move v4, v5

    :goto_3
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1477
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1478
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 1482
    const/4 v3, 0x0

    .line 1483
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/b;->getItemCount()I

    move-result v13

    .line 1484
    move v14, v10

    :goto_4
    add-int v4, v10, v13

    if-ge v14, v4, :cond_7

    .line 1485
    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v15

    .line 1486
    if-nez v15, :cond_3

    .line 1487
    nop

    .line 1484
    move/from16 v21, v9

    goto/16 :goto_8

    .line 1490
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    if-ne v4, v11, :cond_4

    .line 1491
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->hL:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1492
    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    .line 1502
    :goto_5
    move/from16 v16, v3

    goto :goto_6

    .line 1494
    :cond_4
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->hL:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1495
    invoke-virtual {v0, v15, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    .line 1496
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1502
    :goto_6
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, v3, Lcom/google/android/flexbox/c;->hD:[J

    aget-wide v3, v3, v14

    .line 1503
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v5

    .line 1504
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v3

    .line 1505
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1506
    invoke-direct {v0, v15, v5, v3, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1507
    invoke-virtual {v15, v5, v3}, Landroid/view/View;->measure(II)V

    .line 1510
    :cond_5
    iget v3, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v6, v1, v3

    .line 1511
    iget v1, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float v5, v2, v1

    .line 1513
    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int v17, v9, v1

    .line 1514
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_6

    .line 1515
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 1516
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v4, v2, v3

    .line 1517
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 1518
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v19, v17, v2

    .line 1515
    move-object v2, v15

    move-object v3, v8

    move/from16 v20, v5

    move/from16 v5, v17

    move v11, v6

    move/from16 v6, v18

    move/from16 v21, v9

    move-object v9, v7

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V

    goto :goto_7

    .line 1520
    :cond_6
    move/from16 v20, v5

    move v11, v6

    move/from16 v21, v9

    move-object v9, v7

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    .line 1521
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1522
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v2, v3

    .line 1523
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v7, v17, v2

    .line 1520
    move-object v2, v15

    move-object v3, v8

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;IIII)V

    .line 1525
    :goto_7
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    add-float v6, v11, v1

    .line 1527
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v9, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    sub-float v5, v20, v1

    .line 1484
    move v2, v5

    move v1, v6

    move/from16 v3, v16

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v9, v21

    const/4 v11, 0x1

    goto/16 :goto_4

    .line 1530
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    add-int/2addr v1, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1531
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/b;->cb()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/view/View;Lcom/google/android/flexbox/b;)Landroid/view/View;
    .locals 5

    .line 2136
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 2137
    nop

    .line 2138
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    iget p2, p2, Lcom/google/android/flexbox/b;->mItemCount:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    .line 2139
    :goto_0
    if-le v1, v2, :cond_3

    .line 2140
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2141
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2142
    goto :goto_2

    .line 2144
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2147
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2148
    invoke-virtual {v4, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    .line 2149
    goto :goto_1

    .line 2152
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2153
    invoke-virtual {v4, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2154
    nop

    .line 2139
    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2158
    :cond_3
    return-object p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V
    .locals 8

    .line 1308
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1309
    return-void

    .line 1311
    :cond_0
    nop

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    .line 1313
    if-nez v0, :cond_1

    .line 1314
    return-void

    .line 1316
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1318
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, v3, Lcom/google/android/flexbox/c;->hC:[I

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    .line 1319
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1320
    return-void

    .line 1322
    :cond_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/b;

    .line 1323
    nop

    .line 1324
    move v5, v3

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1325
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1326
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1327
    iget v7, v4, Lcom/google/android/flexbox/b;->hz:I

    invoke-virtual {p0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ne v7, v6, :cond_4

    .line 1331
    nop

    .line 1332
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_3

    .line 1334
    goto :goto_1

    .line 1336
    :cond_3
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1337
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/b;

    .line 1324
    move v5, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1344
    :cond_5
    move v2, v5

    :goto_1
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1345
    return-void
.end method

.method private b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;ZZ)V
    .locals 2

    .line 1721
    if-eqz p3, :cond_0

    .line 1722
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cf()V

    goto :goto_0

    .line 1724
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 1726
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p3, :cond_1

    .line 1727
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hU:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1728
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1727
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_1

    .line 1730
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1731
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1730
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1733
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1734
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1735
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1736
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1737
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1738
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1740
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 1741
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p3

    if-le p2, p3, :cond_2

    .line 1742
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/b;

    .line 1743
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 1744
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/flexbox/b;->getItemCount()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1746
    :cond_2
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z
    .locals 4

    .line 1127
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1128
    return v1

    .line 1132
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bk(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1134
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bj(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    :goto_0
    if-eqz v0, :cond_6

    .line 1136
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Landroid/view/View;)V

    .line 1139
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1141
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1142
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1143
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge p1, v3, :cond_3

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1144
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1145
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 1146
    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 1147
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1148
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1149
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1147
    :goto_3
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1152
    :cond_5
    return v2

    .line 1154
    :cond_6
    return v1
.end method

.method private b(Landroid/view/View;I)Z
    .locals 4

    .line 1348
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1350
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    .line 1349
    move v1, v2

    goto :goto_0

    .line 1350
    :cond_0
    nop

    .line 1349
    :goto_0
    return v1

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    if-gt p1, p2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private bh(I)V
    .locals 4

    .line 617
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 618
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 619
    if-lt p1, v1, :cond_0

    .line 620
    return-void

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    .line 623
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/c;->be(I)V

    .line 624
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/c;->bd(I)V

    .line 625
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/c;->bf(I)V

    .line 626
    nop

    .line 628
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v2, v2, Lcom/google/android/flexbox/c;->hC:[I

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 629
    return-void

    .line 632
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    .line 634
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 635
    if-nez v2, :cond_2

    .line 636
    return-void

    .line 638
    :cond_2
    if-gt v0, p1, :cond_3

    if-gt p1, v1, :cond_3

    .line 639
    return-void

    .line 644
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 646
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz p1, :cond_4

    .line 647
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 648
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_0

    .line 650
    :cond_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 651
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 653
    :goto_0
    return-void
.end method

.method private bi(I)V
    .locals 11

    .line 846
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 848
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 849
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    .line 850
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 856
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    if-eqz v4, :cond_2

    .line 857
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hR:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hR:I

    if-eq v4, v2, :cond_0

    .line 864
    move v5, v6

    goto :goto_0

    .line 857
    :cond_0
    nop

    .line 864
    :goto_0
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 865
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 866
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    .line 880
    :goto_1
    move v6, v4

    goto :goto_3

    .line 868
    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hS:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hS:I

    if-eq v4, v3, :cond_3

    .line 875
    move v5, v6

    goto :goto_2

    .line 868
    :cond_3
    nop

    .line 875
    :goto_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mContext:Landroid/content/Context;

    .line 876
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 877
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    goto :goto_1

    .line 880
    :goto_3
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hR:I

    .line 881
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hS:I

    .line 883
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    if-ne v2, v3, :cond_5

    if-eqz v5, :cond_8

    .line 885
    :cond_5
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 887
    return-void

    .line 898
    :cond_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 899
    nop

    .line 900
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    invoke-virtual {p1}, Lcom/google/android/flexbox/c$a;->reset()V

    .line 901
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 902
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 905
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 903
    move v4, v0

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/c;->b(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V

    goto :goto_4

    .line 907
    :cond_7
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 910
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 908
    move v4, v0

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/c;->d(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V

    .line 912
    :goto_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p1, Lcom/google/android/flexbox/c$a;->mFlexLines:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 913
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/flexbox/c;->c(II)V

    .line 914
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {p1}, Lcom/google/android/flexbox/c;->cd()V

    .line 915
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v0, v0, Lcom/google/android/flexbox/c;->hC:[I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 916
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v1

    aget v0, v0, v1

    .line 915
    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 917
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto/16 :goto_8

    .line 923
    :cond_8
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    if-eq v2, v3, :cond_9

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 924
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 926
    :goto_5
    move v10, v2

    goto :goto_6

    .line 924
    :cond_9
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v2

    goto :goto_5

    .line 926
    :goto_6
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    invoke-virtual {v2}, Lcom/google/android/flexbox/c$a;->reset()V

    .line 927
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 928
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 933
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/c;->c(Ljava/util/List;I)V

    .line 934
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 935
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 934
    move v4, v0

    move v5, v1

    move v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    goto :goto_7

    .line 938
    :cond_a
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/c;->bf(I)V

    .line 939
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 940
    move v4, v0

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V

    goto :goto_7

    .line 945
    :cond_b
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 950
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/c;->c(Ljava/util/List;I)V

    .line 951
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 952
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 951
    move v4, v1

    move v5, v0

    move v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIIILjava/util/List;)V

    goto :goto_7

    .line 955
    :cond_c
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/c;->bf(I)V

    .line 956
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 957
    move v4, v0

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/c;->c(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V

    .line 961
    :goto_7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p1, Lcom/google/android/flexbox/c$a;->mFlexLines:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 962
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {p1, v0, v1, v10}, Lcom/google/android/flexbox/c;->a(III)V

    .line 972
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {p1, v10}, Lcom/google/android/flexbox/c;->bc(I)V

    .line 974
    :goto_8
    return-void
.end method

.method private bj(I)Landroid/view/View;
    .locals 3

    .line 1166
    nop

    .line 1167
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(III)Landroid/view/View;

    move-result-object p1

    .line 1168
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1169
    return-object v0

    .line 1171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1172
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v2, v2, Lcom/google/android/flexbox/c;->hC:[I

    aget v1, v2, v1

    .line 1173
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1174
    return-object v0

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/b;

    .line 1177
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;Lcom/google/android/flexbox/b;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private bk(I)Landroid/view/View;
    .locals 2

    .line 1189
    nop

    .line 1190
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(III)Landroid/view/View;

    move-result-object p1

    .line 1191
    if-nez p1, :cond_0

    .line 1192
    const/4 p1, 0x0

    return-object p1

    .line 1194
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1195
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, v1, Lcom/google/android/flexbox/c;->hC:[I

    aget v0, v1, v0

    .line 1196
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/b;

    .line 1197
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;Lcom/google/android/flexbox/b;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private bl(I)I
    .locals 5

    .line 1949
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1952
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cg()V

    .line 1953
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 1954
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hU:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hU:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1955
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    .line 1957
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1958
    move v1, v4

    goto :goto_2

    .line 1957
    :cond_3
    nop

    .line 1958
    :goto_2
    if-eqz v1, :cond_6

    .line 1959
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1960
    if-gez p1, :cond_4

    .line 1961
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 1962
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 1961
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1963
    neg-int p1, p1

    goto :goto_3

    .line 1965
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_5

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 1966
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p1

    neg-int p1, p1

    .line 1969
    :cond_5
    :goto_3
    goto :goto_4

    .line 1970
    :cond_6
    if-lez p1, :cond_7

    .line 1971
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 1972
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 1971
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_4

    .line 1974
    :cond_7
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    .line 1975
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p1

    neg-int p1, p1

    .line 1978
    :goto_4
    return p1

    .line 1950
    :cond_9
    :goto_5
    return v1
.end method

.method private c(Landroid/view/View;)I
    .locals 1

    .line 2340
    nop

    .line 2341
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2342
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private c(Lcom/google/android/flexbox/b;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1535
    nop

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v2

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 1541
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    .line 1543
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v5

    .line 1544
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 1545
    iget v6, v9, Lcom/google/android/flexbox/b;->hr:I

    sub-int/2addr v4, v6

    .line 1546
    iget v6, v9, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v5, v6

    .line 1548
    :cond_0
    move v10, v4

    move v11, v5

    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v12

    .line 1554
    nop

    .line 1555
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v13, 0x1

    packed-switch v4, :pswitch_data_0

    .line 1584
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1570
    :pswitch_0
    iget v4, v9, Lcom/google/android/flexbox/b;->mItemCount:I

    if-eqz v4, :cond_1

    .line 1571
    iget v4, v9, Lcom/google/android/flexbox/b;->hp:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v7, v9, Lcom/google/android/flexbox/b;->mItemCount:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_0

    .line 1574
    :cond_1
    move v4, v5

    :goto_0
    int-to-float v1, v1

    div-float v6, v4, v6

    add-float/2addr v1, v6

    .line 1575
    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    .line 1576
    goto :goto_3

    .line 1578
    :pswitch_1
    int-to-float v1, v1

    .line 1579
    iget v4, v9, Lcom/google/android/flexbox/b;->mItemCount:I

    if-eq v4, v13, :cond_2

    iget v4, v9, Lcom/google/android/flexbox/b;->mItemCount:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1580
    :goto_1
    iget v6, v9, Lcom/google/android/flexbox/b;->hp:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float v4, v6, v4

    .line 1581
    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 1582
    goto :goto_3

    .line 1565
    :pswitch_2
    int-to-float v1, v1

    iget v4, v9, Lcom/google/android/flexbox/b;->hp:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    .line 1566
    sub-int v2, v3, v2

    int-to-float v2, v2

    iget v4, v9, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    .line 1568
    goto :goto_2

    .line 1561
    :pswitch_3
    iget v4, v9, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 1562
    iget v3, v9, Lcom/google/android/flexbox/b;->hp:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    .line 1563
    nop

    .line 1587
    move v4, v5

    move/from16 v26, v2

    move v2, v1

    move/from16 v1, v26

    goto :goto_3

    .line 1557
    :pswitch_4
    int-to-float v1, v1

    .line 1558
    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 1559
    nop

    .line 1587
    :goto_2
    move v4, v5

    :goto_3
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1588
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1589
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 1593
    const/4 v3, 0x0

    .line 1594
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/b;->getItemCount()I

    move-result v15

    .line 1595
    move v8, v12

    :goto_4
    add-int v4, v12, v15

    if-ge v8, v4, :cond_9

    .line 1596
    invoke-virtual {v0, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v7

    .line 1597
    if-nez v7, :cond_3

    .line 1598
    nop

    .line 1595
    move/from16 v19, v8

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v22, v13

    goto/16 :goto_8

    .line 1604
    :cond_3
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v4, v4, Lcom/google/android/flexbox/c;->hD:[J

    aget-wide v4, v4, v8

    .line 1605
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v6, v4, v5}, Lcom/google/android/flexbox/c;->c(J)I

    move-result v6

    .line 1606
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v13, v4, v5}, Lcom/google/android/flexbox/c;->d(J)I

    move-result v4

    .line 1607
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1608
    invoke-direct {v0, v7, v6, v4, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1609
    invoke-virtual {v7, v6, v4}, Landroid/view/View;->measure(II)V

    .line 1612
    :cond_4
    iget v4, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v6, v1, v4

    .line 1613
    iget v1, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v5, v2, v1

    .line 1615
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 1616
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->hL:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1617
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    .line 1624
    :goto_5
    move/from16 v16, v3

    goto :goto_6

    .line 1619
    :cond_5
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->hL:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1620
    invoke-virtual {v0, v7, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    .line 1621
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1624
    :goto_6
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int v17, v10, v1

    .line 1625
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int v18, v11, v1

    .line 1626
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v1, :cond_7

    .line 1627
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    if-eqz v1, :cond_6

    .line 1628
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-boolean v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1629
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v17, v18, v2

    .line 1630
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v19, v2, v19

    .line 1631
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 1628
    move-object v2, v7

    move/from16 v21, v3

    move-object v3, v9

    move/from16 v22, v4

    move/from16 v4, v21

    move/from16 v23, v10

    move v10, v5

    move/from16 v5, v17

    move/from16 v24, v11

    move v11, v6

    move/from16 v6, v19

    move/from16 v25, v12

    move-object v12, v7

    move/from16 v7, v18

    move/from16 v19, v8

    move/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    goto/16 :goto_7

    .line 1633
    :cond_6
    move/from16 v22, v4

    move/from16 v19, v8

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move v10, v5

    move v11, v6

    move-object v12, v7

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1634
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v18, v2

    .line 1635
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1636
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    .line 1633
    move-object v2, v12

    move-object v3, v9

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    goto :goto_7

    .line 1639
    :cond_7
    move/from16 v22, v4

    move/from16 v19, v8

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move v10, v5

    move v11, v6

    move-object v12, v7

    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    if-eqz v1, :cond_8

    .line 1640
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1641
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v6, v2, v3

    .line 1642
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v17, v2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1640
    move-object v2, v12

    move-object v3, v9

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    goto :goto_7

    .line 1644
    :cond_8
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1645
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1646
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v17, v2

    .line 1647
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    .line 1644
    move-object v2, v12

    move-object v3, v9

    move/from16 v5, v17

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/c;->a(Landroid/view/View;Lcom/google/android/flexbox/b;ZIIII)V

    .line 1650
    :goto_7
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v14

    add-float v6, v11, v1

    .line 1652
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 1653
    invoke-virtual {v0, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v14

    sub-float v5, v10, v1

    .line 1595
    move v2, v5

    move v1, v6

    move/from16 v3, v16

    :goto_8
    add-int/lit8 v8, v19, 0x1

    move/from16 v13, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    goto/16 :goto_4

    .line 1655
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    add-int/2addr v1, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1656
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/b;->cb()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(III)Landroid/view/View;
    .locals 7

    .line 1210
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cg()V

    .line 1211
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 1212
    nop

    .line 1213
    nop

    .line 1214
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1215
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1216
    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1217
    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_5

    .line 1218
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1219
    invoke-virtual {p0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 1220
    if-ltz v6, :cond_4

    if-ge v6, p3, :cond_4

    .line 1221
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1222
    if-nez v4, :cond_4

    .line 1223
    nop

    .line 1217
    move-object v4, v5

    goto :goto_3

    .line 1225
    :cond_1
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_3

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1226
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v1, :cond_2

    goto :goto_2

    .line 1231
    :cond_2
    return-object v5

    .line 1227
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 1228
    nop

    .line 1217
    move-object v3, v5

    :cond_4
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    .line 1235
    :cond_5
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V
    .locals 7

    .line 1357
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1358
    return-void

    .line 1360
    :cond_0
    nop

    .line 1361
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 1362
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    .line 1363
    if-nez v0, :cond_1

    .line 1364
    return-void

    .line 1367
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1368
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v3, v3, Lcom/google/android/flexbox/c;->hC:[I

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    .line 1369
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1370
    return-void

    .line 1372
    :cond_2
    nop

    .line 1373
    nop

    .line 1374
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/b;

    .line 1375
    move v4, v0

    move v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 1376
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1377
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1378
    iget v6, v3, Lcom/google/android/flexbox/b;->hy:I

    invoke-virtual {p0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_4

    .line 1382
    nop

    .line 1383
    if-gtz v2, :cond_3

    .line 1385
    goto :goto_1

    .line 1387
    :cond_3
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1388
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/b;

    .line 1375
    move v4, v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1395
    :cond_5
    move v0, v4

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    .line 1396
    return-void
.end method

.method private c(Landroid/view/View;I)Z
    .locals 3

    .line 1399
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    if-gt p1, p2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 1402
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1403
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_2

    .line 1402
    move v1, v2

    goto :goto_0

    .line 1403
    :cond_2
    nop

    .line 1402
    :goto_0
    return v1
.end method

.method private c(Landroid/view/View;Z)Z
    .locals 10

    .line 2361
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v0

    .line 2362
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 2363
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2364
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2365
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;)I

    move-result v4

    .line 2366
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/view/View;)I

    move-result v5

    .line 2367
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;)I

    move-result v6

    .line 2368
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Landroid/view/View;)I

    move-result p1

    .line 2370
    nop

    .line 2371
    nop

    .line 2372
    nop

    .line 2373
    nop

    .line 2374
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v0, v4, :cond_0

    if-lt v2, v6, :cond_0

    .line 2375
    nop

    .line 2377
    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-ge v4, v2, :cond_2

    if-lt v6, v0, :cond_1

    goto :goto_1

    .line 2381
    :cond_1
    move v0, v8

    goto :goto_2

    .line 2378
    :cond_2
    :goto_1
    nop

    .line 2381
    move v0, v7

    :goto_2
    if-gt v1, v5, :cond_3

    if-lt v3, p1, :cond_3

    .line 2382
    nop

    .line 2384
    move v2, v7

    goto :goto_3

    :cond_3
    move v2, v8

    :goto_3
    if-ge v5, v3, :cond_5

    if-lt p1, v1, :cond_4

    goto :goto_4

    .line 2387
    :cond_4
    move p1, v8

    goto :goto_5

    .line 2385
    :cond_5
    :goto_4
    nop

    .line 2387
    move p1, v7

    :goto_5
    if-eqz p2, :cond_7

    .line 2388
    if-eqz v9, :cond_6

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v7, v8

    :goto_6
    return v7

    .line 2390
    :cond_7
    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v7, v8

    :goto_7
    return v7
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    return p0
.end method

.method private ce()V
    .locals 5

    .line 995
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v0

    .line 996
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1020
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1021
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    goto :goto_3

    .line 1013
    :pswitch_0
    if-ne v0, v4, :cond_0

    move v3, v4

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1014
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_1

    .line 1015
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1017
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    .line 1018
    goto :goto_3

    .line 1006
    :pswitch_1
    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1007
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_3

    .line 1008
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1010
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    .line 1011
    goto :goto_3

    .line 1002
    :pswitch_2
    if-eq v0, v4, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 1003
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_5

    move v3, v4

    nop

    :cond_5
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    .line 1004
    goto :goto_3

    .line 998
    :pswitch_3
    if-ne v0, v4, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    .line 999
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-ne v0, v2, :cond_7

    move v3, v4

    nop

    :cond_7
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hM:Z

    .line 1000
    nop

    .line 1023
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cf()V
    .locals 3

    .line 1750
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    goto :goto_0

    .line 1753
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 1762
    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 1764
    return-void
.end method

.method private cg()V
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    .line 1768
    return-void

    .line 1778
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1779
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_1

    .line 1780
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1781
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1783
    :cond_1
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1784
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1787
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-nez v0, :cond_3

    .line 1788
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1789
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1791
    :cond_3
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1792
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    .line 1795
    :goto_0
    return-void
.end method

.method private ch()V
    .locals 2

    .line 2322
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2323
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 2324
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 2325
    return-void
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2181
    return v1

    .line 2183
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2184
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cg()V

    .line 2185
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bj(I)Landroid/view/View;

    move-result-object v2

    .line 2186
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bk(I)Landroid/view/View;

    move-result-object v0

    .line 2187
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 2191
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2192
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2193
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 2188
    :cond_2
    :goto_0
    return v1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 2215
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2216
    return v1

    .line 2218
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2219
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bj(I)Landroid/view/View;

    move-result-object v2

    .line 2220
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bk(I)Landroid/view/View;

    move-result-object v0

    .line 2221
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 2224
    :cond_1
    nop

    .line 2225
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 2226
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 2227
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2228
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 2227
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2229
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v4, v4, Lcom/google/android/flexbox/c;->hC:[I

    aget p1, v4, p1

    .line 2230
    if-eqz p1, :cond_3

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    goto :goto_0

    .line 2233
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, v1, Lcom/google/android/flexbox/c;->hC:[I

    aget v1, v1, v3

    .line 2234
    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 2235
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2237
    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2238
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2239
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2237
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    .line 2231
    :cond_3
    :goto_0
    return v1

    .line 2222
    :cond_4
    :goto_1
    return v1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 2268
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2269
    return v1

    .line 2271
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2272
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bj(I)Landroid/view/View;

    move-result-object v2

    .line 2273
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bk(I)Landroid/view/View;

    move-result-object v0

    .line 2274
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 2277
    :cond_1
    nop

    .line 2278
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 2279
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 2280
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2281
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2280
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2282
    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    .line 2283
    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    .line 2275
    :cond_2
    :goto_0
    return v1
.end method

.method private d(Landroid/view/View;)I
    .locals 1

    .line 2346
    nop

    .line 2347
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2348
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object p0
.end method

.method private d(II)V
    .locals 10

    .line 1990
    nop

    .line 1991
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 1992
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    .line 1995
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1997
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1998
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-boolean v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v5, :cond_0

    .line 1999
    move v5, v4

    goto :goto_0

    .line 1998
    :cond_0
    nop

    .line 1999
    move v5, v3

    :goto_0
    const/4 v6, -0x1

    if-ne p1, v4, :cond_7

    .line 2000
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2001
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2002
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 2003
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v8, v8, Lcom/google/android/flexbox/c;->hC:[I

    aget v8, v8, v7

    .line 2004
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/b;

    .line 2008
    invoke-direct {p0, p1, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;Lcom/google/android/flexbox/b;)Landroid/view/View;

    move-result-object p1

    .line 2009
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v8, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2010
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2011
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v7, v7, Lcom/google/android/flexbox/c;->hC:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    if-gt v7, v8, :cond_1

    .line 2012
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_1

    .line 2014
    :cond_1
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v8, v8, Lcom/google/android/flexbox/c;->hC:[I

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2015
    invoke-static {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v9

    aget v8, v8, v9

    .line 2014
    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2018
    :goto_1
    if-eqz v5, :cond_3

    .line 2019
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2020
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2021
    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    add-int/2addr p1, v7

    .line 2020
    invoke-static {v5, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2022
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v5

    if-ltz v5, :cond_2

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2023
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    nop

    .line 2022
    :cond_2
    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_2

    .line 2025
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2026
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2027
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr p1, v5

    .line 2026
    invoke-static {v3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2030
    :goto_2
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    if-eq p1, v6, :cond_4

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2031
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2032
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v3

    if-gt p1, v3, :cond_6

    .line 2036
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    sub-int v7, p2, p1

    .line 2037
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    invoke-virtual {p1}, Lcom/google/android/flexbox/c$a;->reset()V

    .line 2038
    if-lez v7, :cond_6

    .line 2039
    if-eqz v0, :cond_5

    .line 2040
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2042
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 2040
    move v5, v1

    move v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/c;->a(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V

    goto :goto_3

    .line 2044
    :cond_5
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLinesResult:Lcom/google/android/flexbox/c$a;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2046
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 2044
    move v5, v1

    move v6, v2

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/c;->c(Lcom/google/android/flexbox/c$a;IIIILjava/util/List;)V

    .line 2048
    :goto_3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2049
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    .line 2048
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/flexbox/c;->a(III)V

    .line 2050
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/c;->bc(I)V

    .line 2053
    :cond_6
    goto/16 :goto_6

    .line 2054
    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2056
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2057
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2058
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, v1, Lcom/google/android/flexbox/c;->hC:[I

    aget v1, v1, v0

    .line 2059
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/b;

    .line 2063
    invoke-direct {p0, p1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;Lcom/google/android/flexbox/b;)Landroid/view/View;

    move-result-object p1

    .line 2065
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2066
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    iget-object v1, v1, Lcom/google/android/flexbox/c;->hC:[I

    aget v1, v1, v0

    .line 2067
    if-ne v1, v6, :cond_8

    .line 2068
    nop

    .line 2070
    move v1, v3

    :cond_8
    if-lez v1, :cond_9

    .line 2071
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/b;

    .line 2074
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {v2}, Lcom/google/android/flexbox/b;->getItemCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2075
    goto :goto_4

    .line 2076
    :cond_9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2078
    :goto_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    if-lez v1, :cond_a

    sub-int/2addr v1, v4

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2080
    if-eqz v5, :cond_c

    .line 2081
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2082
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2083
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr p1, v1

    .line 2082
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2084
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 2085
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    nop

    .line 2084
    :cond_b
    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_6

    .line 2087
    :cond_c
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2088
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 2089
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr p1, v1

    .line 2088
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2092
    :goto_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 2093
    return-void
.end method

.method static synthetic e(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/c;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    return-object p0
.end method

.method private ensureLayoutState()V
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    if-nez v0, :cond_0

    .line 1799
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 1801
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object p0
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 2

    .line 813
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 815
    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 817
    if-lez v0, :cond_1

    .line 818
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_1

    .line 820
    :cond_1
    return v1

    .line 823
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 824
    if-lez v0, :cond_4

    .line 825
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    .line 832
    :goto_1
    add-int/2addr p1, p2

    .line 833
    if-eqz p4, :cond_3

    .line 835
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    .line 836
    if-lez p3, :cond_3

    .line 837
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 838
    add-int/2addr p3, p2

    return p3

    .line 841
    :cond_3
    return p2

    .line 827
    :cond_4
    return v1
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 2

    .line 775
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mIsRtl:Z

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    .line 777
    if-lez v0, :cond_0

    .line 779
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    .line 781
    :cond_0
    return v1

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    .line 785
    if-lez v0, :cond_3

    .line 787
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    .line 792
    :goto_0
    add-int/2addr p1, p2

    .line 793
    if-eqz p4, :cond_2

    .line 795
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    .line 796
    if-lez p1, :cond_2

    .line 797
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 798
    sub-int/2addr p2, p1

    return p2

    .line 801
    :cond_2
    return p2

    .line 789
    :cond_3
    return v1
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    .line 2305
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2306
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2307
    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 2308
    return v1

    .line 2310
    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    .line 2318
    return v1

    .line 2316
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 2312
    :cond_3
    return v2

    .line 2314
    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 0

    .line 1414
    :goto_0
    if-lt p3, p2, :cond_0

    .line 1415
    invoke-virtual {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1414
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 1417
    :cond_0
    return-void
.end method

.method private shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 2293
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2294
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2295
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2296
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2293
    :goto_1
    return p1
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 2

    .line 1869
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hU:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1874
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hU:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 544
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p1
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2163
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 2167
    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2198
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    .line 2202
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2244
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 2248
    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 p1, 0x0

    return-object p1

    .line 523
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 524
    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 526
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 528
    :cond_2
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2172
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 2176
    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2207
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 2211
    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2253
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->computeScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 2257
    return p1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .line 2409
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 2410
    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .line 2443
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    .line 2444
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 534
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 539
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    .line 346
    const/4 v0, 0x5

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    return v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 2

    .line 473
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    .line 474
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v1

    .line 473
    invoke-static {p1, v0, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p1

    return p1
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 468
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 467
    invoke-static {p1, v0, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p1

    return p1
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 0

    .line 371
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 372
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public getFlexDirection()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    return v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 436
    if-eqz v0, :cond_0

    .line 437
    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 480
    return v1

    .line 482
    :cond_0
    const/high16 v0, -0x80000000

    .line 483
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 484
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/b;

    .line 485
    iget v3, v3, Lcom/google/android/flexbox/b;->hp:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_1
    return v0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSumOfCrossSize()I
    .locals 4

    .line 492
    nop

    .line 493
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/b;

    .line 496
    iget v3, v3, Lcom/google/android/flexbox/b;->hr:I

    add-int/2addr v2, v3

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    return v2
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 2

    .line 1661
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 549
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 550
    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1851
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1852
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hU:Landroid/view/View;

    .line 1853
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1857
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1858
    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 1862
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1863
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1865
    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 587
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 588
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bh(I)V

    .line 589
    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 612
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    .line 613
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bh(I)V

    .line 614
    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 606
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 607
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bh(I)V

    .line 608
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 600
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 601
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bh(I)V

    .line 602
    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 594
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    .line 595
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bh(I)V

    .line 596
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 677
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 678
    iput-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 679
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 680
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    return-void

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ce()V

    .line 684
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->cg()V

    .line 685
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ensureLayoutState()V

    .line 686
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/c;->be(I)V

    .line 687
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/c;->bd(I)V

    .line 689
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexboxHelper:Lcom/google/android/flexbox/c;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/c;->bf(I)V

    .line 691
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 693
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 697
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_3

    .line 699
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 700
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-direct {p0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 701
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;Z)Z

    .line 703
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 705
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 706
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;ZZ)V

    goto :goto_0

    .line 708
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;ZZ)V

    .line 716
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bi(I)V

    .line 728
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 729
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 733
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    .line 734
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$a;ZZ)V

    .line 735
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 739
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    .line 740
    goto :goto_1

    .line 741
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 745
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    .line 746
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-direct {p0, v0, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;ZZ)V

    .line 747
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    .line 751
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hN:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    .line 754
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 755
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 756
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    .line 757
    add-int/2addr v0, v1

    .line 758
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 759
    goto :goto_2

    .line 760
    :cond_6
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    .line 761
    add-int/2addr v1, v0

    .line 762
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 765
    :cond_7
    :goto_2
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 978
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 982
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 983
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 984
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 985
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hV:I

    .line 986
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    .line 987
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 988
    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/flexbox/b;)V
    .locals 0

    .line 392
    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->hL:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    .line 395
    iget p1, p4, Lcom/google/android/flexbox/b;->hp:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hp:I

    .line 396
    iget p1, p4, Lcom/google/android/flexbox/b;->hq:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hq:I

    .line 397
    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    .line 399
    iget p1, p4, Lcom/google/android/flexbox/b;->hp:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hp:I

    .line 400
    iget p1, p4, Lcom/google/android/flexbox/b;->hq:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/b;->hq:I

    .line 402
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/flexbox/b;)V
    .locals 0

    .line 463
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 572
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 573
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 574
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 583
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 558
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 560
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 561
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 562
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 563
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    .line 562
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 564
    goto :goto_0

    .line 565
    :cond_1
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 567
    :goto_0
    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 1882
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1883
    return p1

    .line 1885
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bl(I)I

    move-result p1

    .line 1886
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1887
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1888
    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1805
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPosition:I

    .line 1806
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mPendingScrollPositionOffset:I

    .line 1807
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1808
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hQ:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 1810
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 1811
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1895
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 1897
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 1898
    return p1

    .line 1900
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->bl(I)I

    move-result p1

    .line 1901
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hO:Lcom/google/android/flexbox/FlexboxLayoutManager$a;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$a;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$a;I)I

    .line 1902
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1903
    return p1
.end method

.method public setAlignItems(I)V
    .locals 2

    .line 333
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    if-eq v0, p1, :cond_2

    .line 334
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 336
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ch()V

    .line 338
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 339
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 341
    :cond_2
    return-void
.end method

.method public setFlexDirection(I)V
    .locals 1

    .line 274
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    if-eq v0, p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 279
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 280
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 281
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    .line 282
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ch()V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 285
    :cond_0
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/b;",
            ">;)V"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 504
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1

    .line 295
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 299
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eq v0, p1, :cond_2

    .line 300
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->ch()V

    .line 304
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 305
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 306
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hP:Landroid/support/v7/widget/OrientationHelper;

    .line 307
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    .line 309
    :cond_2
    return-void

    .line 296
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 1816
    new-instance p2, Landroid/support/v7/widget/LinearSmoothScroller;

    .line 1817
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1818
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1819
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 1820
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->hT:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 514
    return-void
.end method
