.class public Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;
.super Lcom/xiaopeng/xui/widget/XRecyclerView;
.source "PikerRecycleView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PikerRecycleView"


# instance fields
.field private mDefLocation:I

.field private mItemHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mNeedSetPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$color;->x_color_line:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_selectionDividerHeight_v5:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/app/pikerview/-$$Lambda$PikerRecycleView$7dMNzKx2guJnjeLBAk5F85NDI9Q;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/app/pikerview/-$$Lambda$PikerRecycleView$7dMNzKx2guJnjeLBAk5F85NDI9Q;-><init>(Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method

.method private drawDividerLine(Landroid/graphics/Canvas;)V
    .locals 14

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getItemHeight()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 74
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v2, v1, v0

    int-to-float v6, v2

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    iget-object v7, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    .line 74
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    add-int/2addr v1, v0

    int-to-float v12, v1

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getWidth()I

    move-result v0

    int-to-float v11, v0

    iget-object v13, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    move-object v8, p1

    move v10, v12

    .line 76
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getItemHeight()I
    .locals 2

    .line 101
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 110
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v0

    .line 112
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mItemHeight:I

    return v0
.end method

.method private setFirstItem2Middle()V
    .locals 3

    .line 81
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getItemHeight()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getHeight()I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 93
    iput-boolean v2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mNeedSetPadding:Z

    sub-int/2addr v1, v0

    .line 94
    div-int/lit8 v1, v1, 0x2

    .line 95
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setClipToPadding(Z)V

    .line 96
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setPadding(IIII)V

    .line 97
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mDefLocation:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->setFirstItem2Middle()V

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->drawDividerLine(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDefLocation()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mDefLocation:I

    return v0
.end method

.method public synthetic lambda$new$0$PikerRecycleView()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_color_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->onThemeChanged(Landroid/content/Context;)V

    return-void
.end method

.method public setDefLocation(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerRecycleView;->mDefLocation:I

    return-void
.end method
