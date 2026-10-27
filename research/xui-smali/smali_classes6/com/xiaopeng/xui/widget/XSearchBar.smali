.class public Lcom/xiaopeng/xui/widget/XSearchBar;
.super Lcom/xiaopeng/xui/widget/XTextInput;
.source "XSearchBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSearchBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_searchbar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_search_reset:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSearchBar;->mResetView:Landroid/widget/ImageButton;

    .line 35
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_search_edit:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSearchBar;->mEditText:Landroid/widget/EditText;

    .line 36
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_search_error:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSearchBar;->mErrorTextView:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_search_status:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSearchBar;->mStatusView:Landroid/view/View;

    .line 38
    return-void
.end method
