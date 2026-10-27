.class public Lcom/xiaopeng/xui/widget/XCatalogBar;
.super Lcom/xiaopeng/xui/widget/XRadioGroup;
.source "XCatalogBar.java"


# instance fields
.field private mIcons:[I

.field private mNames:[Ljava/lang/String;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCatalogBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar_catalog_check_position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 37
    .local v1, "position":I
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar_catalog_text_array:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 38
    .local v3, "names":I
    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    .line 41
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar_catalog_icon_array:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 42
    .local v4, "icons":I
    if-eqz v4, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "iconsArray":[Ljava/lang/String;
    array-length v6, v5

    if-lez v6, :cond_1

    .line 45
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    .line 46
    nop

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 47
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget-object v8, v5, v2

    const-string v9, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    .end local v5    # "iconsArray":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    .line 55
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XCatalogBar;->init(I)V

    .line 56
    return-void
.end method

.method private init(I)V
    .locals 6
    .param p1, "position"    # I

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 61
    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_catalogbar_item:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 62
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 64
    iget v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    if-ne v4, v5, :cond_0

    .line 65
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    aget v4, v4, v2

    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, v1, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 70
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XCatalogBar;->addView(Landroid/view/View;)V

    .line 72
    if-ne p1, v2, :cond_2

    .line 73
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 60
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/CharSequence;II)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "index"    # I

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, "inflate":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_catalogbar_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 96
    .local v1, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 98
    invoke-virtual {v1, v2, p2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 103
    invoke-virtual {p0, v1, p3}, Lcom/xiaopeng/xui/widget/XCatalogBar;->addView(Landroid/view/View;I)V

    .line 104
    return-void
.end method

.method public addTabItem(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 84
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->addTabItem(Ljava/lang/CharSequence;II)V

    .line 85
    return-void
.end method
