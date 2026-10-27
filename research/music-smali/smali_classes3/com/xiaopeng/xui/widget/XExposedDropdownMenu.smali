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
.field private static final TAG:Ljava/lang/String; = "XExposedDropdownMenu"


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
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 p3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 33
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result p1

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbyg$f;->x_exposed_dropdown_menu_inset_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lbyg$f;->x_exposed_dropdown_menu_inset_horizontal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mHoriOffset:I

    .line 36
    iput p3, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mCurrentSelection:I

    .line 48
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->show()V

    return-void
.end method

.method private createPopupWindow()V
    .locals 3

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

    sget v1, Lbyg$j;->x_exposed_dropdown_menu_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 75
    sget v1, Lbyg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lbyg$n;->XExposedDropdownMenu:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget v0, Lbyg$n;->XExposedDropdownMenu_edmDropdownEntries:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    sget v1, Lbyg$n;->XExposedDropdownMenu_edmDropdownSelection:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 56
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lbyg$j;->x_exposed_dropdown_menu_item:I

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->createPopupWindow()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setEntries([Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 61
    new-instance v0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$1;-><init>(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setDropdownHeight(I)V
    .locals 1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/high16 p1, 0x43cc0000    # 408.0f

    .line 156
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    mul-int/lit8 v0, p1, 0x50

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 158
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private setListViewTheme()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbyg$g;->x_exposed_dropdown_menu_list_bg:I

    .line 196
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbyg$g;->x_exposed_dropdown_menu_divider:I

    .line 198
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private show()V
    .locals 4

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
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 88
    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    add-int/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    iget v2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    if-le v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mVerticalOffset:I

    sub-int v2, v0, v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mHoriOffset:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

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

    if-ltz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->onAttachedToWindow()V

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setListViewTheme()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setListViewTheme()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 189
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->onDetachedFromWindow()V

    .line 190
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setListViewTheme()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 101
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

    if-eqz p2, :cond_0

    .line 103
    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;->onItemSelected(ILjava/lang/String;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz p1, :cond_1

    .line 144
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
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setDropdownHeight(I)V

    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    if-eqz p1, :cond_0

    .line 135
    array-length v0, p1

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setSelection(I)V

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setDropdownHeight(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 111
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

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XExposedDropdownMenu;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
