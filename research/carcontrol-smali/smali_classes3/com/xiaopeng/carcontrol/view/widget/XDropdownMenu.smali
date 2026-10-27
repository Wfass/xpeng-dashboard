.class public Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "XDropdownMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;,
        Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XDropdownMenu"

.field private static final TIME_OUT:J = 0xbb8L


# instance fields
.field private mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

.field private final mAutoCloseTask:Ljava/lang/Runnable;

.field private mCurrentSelection:I

.field private mHandler:Landroid/os/Handler;

.field private final mHoriOffset:I

.field private mListTextView:Lcom/xiaopeng/xui/widget/XTextView;

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClickListener:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mVerticalOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 p3, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XDropdownMenu$maEGibl5lzXSaL4dvQkhVTsL3O0;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XDropdownMenu$maEGibl5lzXSaL4dvQkhVTsL3O0;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dropdown_menu_inset_vertical:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mVerticalOffset:I

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dropdown_menu_inset_horizontal:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHoriOffset:I

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mCurrentSelection:I

    .line 53
    invoke-direct {p0, p2}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)Landroid/widget/PopupWindow;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->dismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->show()V

    return-void
.end method

.method private createPopupWindow()V
    .locals 3

    .line 78
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$layout;->x_dropdown_menu_list:I

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 81
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListView:Landroid/widget/ListView;

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->initListTextView()V

    return-void
.end method

.method private dismiss()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XDropdownMenu:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XDropdownMenu_edmDropdownEntries:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$styleable;->XDropdownMenu_edmDropdownSelection:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mCurrentSelection:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 60
    new-instance v2, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$layout;->x_dropdown_menu_item:I

    sget v5, Lcom/xiaopeng/carcontrolmodule/R$id;->x_drop_down_tv:I

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->createPopupWindow()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setEntries([Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setSelection(I)V

    .line 64
    new-instance v0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$1;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initListTextView()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->list_view_anchor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListTextView:Lcom/xiaopeng/xui/widget/XTextView;

    .line 93
    new-instance v1, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XDropdownMenu$nPFcIrTYWOKbe51OtHcE8JJtuf4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$XDropdownMenu$nPFcIrTYWOKbe51OtHcE8JJtuf4;-><init>(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$maEGibl5lzXSaL4dvQkhVTsL3O0(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->dismiss()V

    return-void
.end method

.method private setDropdownHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemSize"
        }
    .end annotation

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/high16 p1, 0x43cc0000    # 408.0f

    .line 202
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x50

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 204
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$dimen;->x_dropdown_menu_inset_vertical:I

    .line 205
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_2
    return-void
.end method

.method private setListViewTheme()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$drawable;->x_dropdown_menu_list_bg:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private show()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHoriOffset:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    new-array v0, v3, [I

    .line 99
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 100
    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mVerticalOffset:I

    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getHeight()I

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 106
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_small_upper:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHoriOffset:I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    const-wide/16 v0, 0xbb8

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->startAutoCloseTask(J)V

    return-void
.end method


# virtual methods
.method public getSelection()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mCurrentSelection:I

    return v0
.end method

.method public getSelectionTitle()Ljava/lang/String;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleWithIndex(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public synthetic lambda$initListTextView$0$XDropdownMenu(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->dismiss()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 235
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->onAttachedToWindow()V

    .line 236
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setListViewTheme()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 220
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setListViewTheme()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XTextView;->onDetachedFromWindow()V

    .line 241
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setListViewTheme()V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_small_lower:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;->onInterceptItemSelected(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;->onItemSelected(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setSelection(I)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->dismiss()V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->clear()V

    if-eqz p1, :cond_1

    .line 184
    array-length v0, p1

    if-lez v0, :cond_1

    .line 186
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 189
    aget-object v2, p1, v1

    .line 190
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mCurrentSelection:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setSelection(I)V

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setDropdownHeight(I)V

    return-void
.end method

.method public setEntries([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->clear()V

    if-eqz p1, :cond_0

    .line 174
    array-length v0, p1

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->addAll([Ljava/lang/Object;)V

    .line 176
    iget p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mCurrentSelection:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setSelection(I)V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setDropdownHeight(I)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOnItemClickListener"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 140
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mCurrentSelection:I

    if-ltz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->getTitleWithIndex(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListTextView:Lcom/xiaopeng/xui/widget/XTextView;

    if-nez v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->initListTextView()V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListTextView:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->setSelectedPosition(I)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAdapter:Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 152
    :cond_1
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_choose:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->setText(I)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListTextView:Lcom/xiaopeng/xui/widget/XTextView;

    if-nez p1, :cond_2

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->initListTextView()V

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mListTextView:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_choose:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :goto_0
    return-void
.end method

.method final startAutoCloseTask(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss menu: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/XDropdownMenu;->mAutoCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
