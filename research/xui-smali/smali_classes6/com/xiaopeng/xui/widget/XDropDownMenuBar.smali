.class public Lcom/xiaopeng/xui/widget/XDropDownMenuBar;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XDropDownMenuBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;
    }
.end annotation


# instance fields
.field iconTintColorId:I

.field private mIconRight:I

.field private mIcons:[I

.field private mNames:[Ljava/lang/String;

.field private onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setOrientation(I)V

    .line 52
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XDropDownMenuBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XDropDownMenuBar_dropdown_menu_check_position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 56
    .local v1, "position":I
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XDropDownMenuBar_dropdown_menu_text_array:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 57
    .local v3, "names":I
    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    .line 60
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XDropDownMenuBar_dropdown_menu_icon_array:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 61
    .local v4, "icons":I
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XDropDownMenuBar_dropdown_menu_icon_right:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIconRight:I

    .line 62
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XDropDownMenuBar_dropdown_menu_icon_tint:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    .line 63
    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "iconsArray":[Ljava/lang/String;
    array-length v6, v5

    if-lez v6, :cond_1

    .line 66
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    .line 67
    nop

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 68
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget-object v8, v5, v2

    const-string v9, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "i":I
    .end local v5    # "iconsArray":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->init(I)V

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    new-instance v5, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$1;-><init>(Lcom/xiaopeng/xui/widget/XDropDownMenuBar;)V

    invoke-virtual {v2, v5}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 80
    return-void
.end method

.method private init(I)V
    .locals 7
    .param p1, "position"    # I

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    .local v0, "inflate":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 88
    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_drop_down_menu_item:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, "item":Landroid/view/View;
    sget v4, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 92
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIconRight:I

    invoke-virtual {v4, v5, v1, v6, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 94
    :cond_1
    iget v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIconRight:I

    invoke-virtual {v4, v1, v1, v5, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 96
    :goto_1
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->addView(Landroid/view/View;)V

    .line 97
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v3, p0, v5}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 98
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    if-ne p1, v2, :cond_2

    .line 100
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 101
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    .line 87
    .end local v3    # "item":Landroid/view/View;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setIconTintColor(I)V

    .line 105
    return-void

    :array_0
    .array-data 4
        0x0
        0x8
        0x0
        0x8
    .end array-data
.end method

.method public static synthetic lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XDropDownMenuBar;Ljava/lang/Double;Landroid/view/View;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 291
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "elementView":Landroid/view/View;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 295
    .end local v0    # "elementView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 296
    .restart local v0    # "elementView":Landroid/view/View;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 298
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setPerformVuiAction(Z)V

    .line 299
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setPosition(I)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setPerformVuiAction(Z)V

    .line 301
    return-void
.end method

.method private updateTextViewStyle(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 239
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$style;->XDropDownMenuItemText:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$string;->x_font_typeface_regular:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$style;->XDropDownMenuItemText:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 244
    :goto_0
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "index"    # I

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_drop_down_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "item":Landroid/view/View;
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget v3, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIconRight:I

    invoke-virtual {v1, p2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setIconTintColor(Landroid/widget/TextView;)V

    .line 131
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->addView(Landroid/view/View;I)V

    .line 132
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, p0, v2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 133
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    .line 135
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x8
        0x0
        0x8
    .end array-data
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

    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->addTabItem(Ljava/lang/CharSequence;II)V

    .line 116
    return-void
.end method

.method public getPosition()I
    .locals 2

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 202
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    return v0

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 170
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 171
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "vuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setVuiValue(Ljava/lang/Object;)V

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 259
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 261
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    .line 262
    .local v2, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v3

    .line 266
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 267
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 269
    :cond_0
    const-string v4, "isTabLayoutChild"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 270
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setVuiProps(Lorg/json/JSONObject;)V

    .line 258
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildVuiElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 279
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildVuiElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->logD(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "position":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "position":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    .line 217
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v5, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 218
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 219
    move v2, v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 226
    :goto_1
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    .line 216
    .end local v3    # "textView":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    invoke-interface {v0, p1, v2, v4}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;->onItemChanged(Landroid/view/View;IZ)V

    .line 231
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 285
    const-string/jumbo v0, "xMenuBar onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->logD(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 287
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 288
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 289
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XDropDownMenuBar$0XksWI7u7DrxVfzu0tO46oOQEwY;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XDropDownMenuBar$0XksWI7u7DrxVfzu0tO46oOQEwY;-><init>(Lcom/xiaopeng/xui/widget/XDropDownMenuBar;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->post(Ljava/lang/Runnable;)Z

    .line 302
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_1
    return v0
.end method

.method public removeTabItem(I)V
    .locals 1
    .param p1, "position"    # I

    .line 162
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->removeViewAt(I)V

    .line 166
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    .line 167
    return-void

    .line 163
    :cond_1
    :goto_0
    return-void
.end method

.method public setIconTintColor(I)V
    .locals 4
    .param p1, "iconTintColorId"    # I

    .line 147
    iput p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    .line 148
    if-nez p1, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 152
    .local v0, "iconTintColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    .local v2, "textView":Landroid/widget/TextView;
    invoke-static {v2, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 153
    .end local v2    # "textView":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->invalidate()V

    .line 159
    return-void
.end method

.method public setIconTintColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 138
    iget v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 140
    .local v0, "iconTintColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 144
    .end local v0    # "iconTintColor":Landroid/content/res/ColorStateList;
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    .line 211
    return-void
.end method

.method public setPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .line 177
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "v":Landroid/view/View;
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 183
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 184
    .local v4, "textView":Landroid/widget/TextView;
    if-ne p1, v0, :cond_1

    .line 185
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 186
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$id;->x_drop_down_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 192
    :goto_1
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    .line 182
    .end local v4    # "textView":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    invoke-interface {v0, v3, p1, v2}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;->onItemChanged(Landroid/view/View;IZ)V

    .line 197
    :cond_3
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    .line 198
    return-void

    .line 178
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    :goto_2
    const-string v0, "XMenuBar"

    const-string v1, "position is out of range"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
