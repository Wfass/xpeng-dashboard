.class public Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "PikerRecycleView.java"


# static fields
.field private static final LINE_ALPHA:I = 0x78

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDefLocation:I

.field private mItemHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNeedSetPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    return-void
.end method

.method private drawDividerLine(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getItemHeight()I

    move-result v0

    .line 55
    .local v0, "itemHeight":I
    if-gtz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getHeight()I

    move-result v1

    .line 59
    .local v1, "rvH":I
    if-gtz v1, :cond_1

    .line 60
    return-void

    .line 63
    :cond_1
    const/4 v3, 0x0

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v2, v4

    int-to-float v4, v2

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v2, v6

    int-to-float v6, v2

    iget-object v7, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    .line 63
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    const/4 v9, 0x0

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v10, v2

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getWidth()I

    move-result v2

    int-to-float v11, v2

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v12, v2

    iget-object v13, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    .line 65
    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    return-void
.end method

.method private getItemHeight()I
    .locals 3

    .line 90
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 94
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_1

    .line 95
    iget v1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v1

    .line 97
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "firstItem":Landroid/view/View;
    if-nez v1, :cond_2

    .line 99
    iget v2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v2

    .line 101
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    .line 102
    iget v2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v2
.end method

.method private setFirstItem2Middle()V
    .locals 4

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getItemHeight()I

    move-result v0

    .line 75
    .local v0, "firstItemH":I
    if-gtz v0, :cond_1

    .line 76
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getHeight()I

    move-result v1

    .line 79
    .local v1, "rvH":I
    if-gtz v1, :cond_2

    .line 80
    return-void

    .line 82
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    .line 83
    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    .line 84
    .local v3, "paddingVertical":I
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setClipToPadding(Z)V

    .line 85
    invoke-virtual {p0, v2, v3, v2, v3}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setPadding(IIII)V

    .line 86
    iget v2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mDefLocation:I

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->scrollToPosition(I)V

    .line 87
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 43
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setFirstItem2Middle()V

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->drawDividerLine(Landroid/graphics/Canvas;)V

    .line 46
    return-void
.end method

.method public setDefLocation(I)V
    .locals 0
    .param p1, "location"    # I

    .line 49
    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mDefLocation:I

    .line 50
    return-void
.end method
