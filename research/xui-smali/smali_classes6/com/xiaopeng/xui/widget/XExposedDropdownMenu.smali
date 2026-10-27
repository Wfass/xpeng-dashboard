.class public Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "XExposedDropdownMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSelection:I

.field private final mHoriOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClickListener:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mVerticalOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_exposed_dropdown_menu_inset_vertical:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_exposed_dropdown_menu_inset_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mHoriOffset:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mCurrentSelection:I

    .line 48
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->init(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->show()V

    return-void
.end method

.method private createPopupWindow()V
    .locals 4

    .line 71
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_exposed_dropdown_menu_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 75
    sget v1, Lcom/xiaopeng/xpui/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XExposedDropdownMenu:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XExposedDropdownMenu_edmDropdownEntries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    .local v1, "array":[Ljava/lang/CharSequence;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XExposedDropdownMenu_edmDropdownSelection:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 56
    .local v2, "selection":I
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$layout;->x_exposed_dropdown_menu_item:I

    invoke-direct {v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->createPopupWindow()V

    .line 58
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 61
    new-instance v3, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$1;-><init>(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;)V

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method private setDropdownHeight(I)V
    .locals 2
    .param p1, "itemSize"    # I

    .line 155
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 156
    const/high16 v0, 0x43cc0000    # 408.0f

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v0

    .local v0, "windowHeight":I
    :goto_0
    goto :goto_1

    .line 157
    .end local v0    # "windowHeight":I
    :cond_0
    if-lez p1, :cond_1

    .line 158
    mul-int/lit8 v0, p1, 0x50

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v0

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    .line 162
    .restart local v0    # "windowHeight":I
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 163
    return-void
.end method

.method private setListViewTheme()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$drawable;->x_exposed_dropdown_menu_list_bg:I

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$drawable;->x_exposed_dropdown_menu_divider:I

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_0
    return-void
.end method

.method private show()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mHoriOffset:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 86
    new-array v0, v3, [I

    .line 87
    .local v0, "outLocation":[I
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getLocationOnScreen([I)V

    .line 88
    const/4 v1, 0x1

    aget v1, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    add-int/2addr v1, v2

    .line 90
    .local v1, "bottom":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    .local v2, "screenBottom":I
    iget v3, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    .line 92
    .local v3, "yOffset":I
    if-le v1, v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getHeight()I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    sub-int v3, v4, v5

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mHoriOffset:I

    invoke-virtual {v4, p0, v5, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 96
    return-void
.end method


# virtual methods
.method public getSelection()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mCurrentSelection:I

    return v0
.end method

.method public getSelectionTitle()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleWithIndex(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 123
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 126
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->onAttachedToWindow()V

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setListViewTheme()V

    .line 185
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 175
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setListViewTheme()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->onDetachedFromWindow()V

    .line 190
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setListViewTheme()V

    .line 191
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 100
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 101
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

    invoke-interface {v1, p3, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;->onItemSelected(ILjava/lang/String;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 108
    :cond_1
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "array"    # [Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 144
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 146
    .local v3, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 145
    .end local v3    # "c":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setDropdownHeight(I)V

    .line 151
    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 135
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setDropdownHeight(I)V

    .line 140
    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;)V
    .locals 0
    .param p1, "mOnItemClickListener"    # Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

    .line 167
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 111
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mCurrentSelection:I

    .line 115
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setText(Ljava/lang/CharSequence;)V

    .line 116
    return-void

    .line 112
    :cond_1
    :goto_0
    return-void
.end method
