.class public Lcom/xiaopeng/xui/widget/XMenuBar;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XMenuBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;
    }
.end annotation


# instance fields
.field iconTintColorId:I

.field private mIcons:[I

.field private mNames:[Ljava/lang/String;

.field private onItemClickListener:Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->setOrientation(I)V

    .line 51
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XMenuBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XMenuBar_menu_check_position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 55
    .local v1, "position":I
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XMenuBar_menu_text_array:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 56
    .local v3, "names":I
    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mNames:[Ljava/lang/String;

    .line 59
    :cond_0
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XMenuBar_menu_icon_array:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 60
    .local v4, "icons":I
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XMenuBar_menu_icon_tint:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->iconTintColorId:I

    .line 61
    if-eqz v4, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "iconsArray":[Ljava/lang/String;
    array-length v6, v5

    if-lez v6, :cond_1

    .line 64
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mIcons:[I

    .line 65
    nop

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 66
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mIcons:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget-object v8, v5, v2

    const-string v9, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    .end local v5    # "iconsArray":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->init(I)V

    .line 72
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    new-instance v5, Lcom/xiaopeng/xui/widget/XMenuBar$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xui/widget/XMenuBar$1;-><init>(Lcom/xiaopeng/xui/widget/XMenuBar;)V

    invoke-virtual {v2, v5}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 78
    return-void
.end method

.method private init(I)V
    .locals 6
    .param p1, "position"    # I

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, "inflate":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 86
    sget v3, Lcom/xiaopeng/xpui/R$layout;->x_menu_item:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "item":Landroid/view/View;
    sget v4, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 88
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mIcons:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mIcons:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 90
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->mIcons:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 92
    :cond_1
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XMenuBar;->addView(Landroid/view/View;)V

    .line 93
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v3, p0, v5}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 94
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    if-ne p1, v2, :cond_2

    .line 96
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 97
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    .line 85
    .end local v3    # "item":Landroid/view/View;
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_3
    iget v1, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->iconTintColorId:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->setIconTintColor(I)V

    .line 101
    return-void

    :array_0
    .array-data 4
        0x0
        0x12
        0x0
        0x12
    .end array-data
.end method

.method public static synthetic lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XMenuBar;Ljava/lang/Double;Landroid/view/View;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 287
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 288
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "elementView":Landroid/view/View;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 291
    .end local v0    # "elementView":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 292
    .restart local v0    # "elementView":Landroid/view/View;
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 294
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->setPerformVuiAction(Z)V

    .line 295
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->setPosition(I)V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->setPerformVuiAction(Z)V

    .line 297
    return-void
.end method

.method private updateTextViewStyle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 240
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "icon"    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "index"    # I

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "item":Landroid/view/View;
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->setIconTintColor(Landroid/widget/TextView;)V

    .line 127
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XMenuBar;->addView(Landroid/view/View;I)V

    .line 128
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, p0, v2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateVui(Landroid/view/View;)V

    .line 131
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x12
        0x0
        0x12
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

    .line 111
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->addTabItem(Ljava/lang/CharSequence;II)V

    .line 112
    return-void
.end method

.method public getPosition()I
    .locals 2

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    return v0

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 166
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 167
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p1, "elementId"    # Ljava/lang/String;
    .param p2, "vuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->setVuiValue(Ljava/lang/Object;)V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 255
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 256
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 257
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XTextView;

    .line 258
    .local v2, "textView":Lcom/xiaopeng/xui/widget/XTextView;
    if-eqz v2, :cond_1

    .line 259
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v3

    .line 262
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 263
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v4

    .line 265
    :cond_0
    const-string v4, "isTabLayoutChild"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xui/widget/XMenuBar;->setVuiProps(Lorg/json/JSONObject;)V

    .line 254
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "textView":Lcom/xiaopeng/xui/widget/XTextView;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildVuiElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 275
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuildVuiElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->logD(Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "position":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "position":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_1

    .line 213
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v5, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 214
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 215
    move v2, v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    .line 222
    :goto_1
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    .line 212
    .end local v3    # "textView":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;

    invoke-interface {v0, p1, v2, v4}, Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;->onItemChanged(Landroid/view/View;IZ)V

    .line 227
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateVui(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 281
    const-string/jumbo v0, "xMenuBar onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->logD(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 283
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 284
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 285
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XMenuBar$pvlSkWhQOntef4FugJHw5IU3te8;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XMenuBar$pvlSkWhQOntef4FugJHw5IU3te8;-><init>(Lcom/xiaopeng/xui/widget/XMenuBar;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->post(Ljava/lang/Runnable;)Z

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_1
    return v0
.end method

.method public removeTabItem(I)V
    .locals 1
    .param p1, "position"    # I

    .line 158
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XMenuBar;->removeViewAt(I)V

    .line 162
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateVui(Landroid/view/View;)V

    .line 163
    return-void

    .line 159
    :cond_1
    :goto_0
    return-void
.end method

.method public setIconTintColor(I)V
    .locals 4
    .param p1, "iconTintColorId"    # I

    .line 143
    iput p1, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->iconTintColorId:I

    .line 144
    if-nez p1, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 148
    .local v0, "iconTintColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 150
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    .local v2, "textView":Landroid/widget/TextView;
    invoke-static {v2, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 149
    .end local v2    # "textView":Landroid/widget/TextView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->invalidate()V

    .line 155
    return-void
.end method

.method public setIconTintColor(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 134
    iget v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->iconTintColorId:I

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->iconTintColorId:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 136
    .local v0, "iconTintColor":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 140
    .end local v0    # "iconTintColor":Landroid/content/res/ColorStateList;
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;

    .line 207
    return-void
.end method

.method public setPosition(I)V
    .locals 7
    .param p1, "position"    # I

    .line 173
    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "v":Landroid/view/View;
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 179
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 180
    .local v4, "textView":Landroid/widget/TextView;
    if-ne p1, v0, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 182
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/xiaopeng/xpui/R$id;->x_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 188
    :goto_1
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    .line 178
    .end local v4    # "textView":Landroid/widget/TextView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;

    invoke-interface {v0, v3, p1, v2}, Lcom/xiaopeng/xui/widget/XMenuBar$OnItemClickListener;->onItemChanged(Landroid/view/View;IZ)V

    .line 193
    :cond_3
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XMenuBar;->updateVui(Landroid/view/View;)V

    .line 194
    return-void

    .line 174
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    :goto_2
    const-string v0, "XMenuBar"

    const-string v1, "position is out of range"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
