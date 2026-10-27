.class public Lcom/xiaopeng/xui/widget/XCatalogBar;
.super Lcom/xiaopeng/xui/widget/XRadioGroup;
.source "XCatalogBar.java"


# instance fields
.field private acL:[I

.field private mNames:[Ljava/lang/String;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCatalogBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 35
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar_catalog_check_position:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 37
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar_catalog_text_array:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    .line 41
    :cond_0
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XCatalogBar_catalog_icon_array:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 44
    array-length v3, v2

    if-lez v3, :cond_1

    .line 45
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->acL:[I

    .line 46
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->acL:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v5, v2, v1

    const-string v6, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    .line 55
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->init(I)V

    .line 56
    return-void
.end method

.method private init(I)V
    .locals 6

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    const/4 v1, 0x0

    move v2, v1

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
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->acL:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    .line 64
    iget v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    if-ne v4, v5, :cond_0

    .line 65
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->acL:[I

    aget v4, v4, v2

    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 67
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->acL:[I

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
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method
