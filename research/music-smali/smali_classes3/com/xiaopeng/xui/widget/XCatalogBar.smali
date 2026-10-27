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

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XCatalogBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lbyg$n;->XCatalogBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 35
    sget v0, Lbyg$n;->XCatalogBar_catalog_check_position:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 37
    sget v2, Lbyg$n;->XCatalogBar_catalog_text_array:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    .line 41
    :cond_0
    sget v2, Lbyg$n;->XCatalogBar_catalog_icon_array:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

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

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    .line 46
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 47
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

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

    return-void
.end method

.method private init(I)V
    .locals 7

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 61
    sget v3, Lbyg$j;->x_catalogbar_item:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 62
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mIcons:[I

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v2, v5, :cond_1

    .line 64
    iget v5, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    if-ne v5, v6, :cond_0

    .line 65
    aget v4, v4, v2

    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 67
    :cond_0
    aget v4, v4, v2

    invoke-virtual {v3, v4, v1, v1, v1}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 70
    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setId(I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XCatalogBar;->addView(Landroid/view/View;)V

    if-ne p1, v2, :cond_2

    .line 73
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/CharSequence;II)V
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    sget v1, Lbyg$j;->x_catalogbar_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 96
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget p1, p0, Lcom/xiaopeng/xui/widget/XCatalogBar;->mOrientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 98
    invoke-virtual {v0, v2, p2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, p2, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->getChildCount()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setId(I)V

    .line 103
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XCatalogBar;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addTabItem(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 84
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XCatalogBar;->addTabItem(Ljava/lang/CharSequence;II)V

    return-void
.end method
