.class public Lcom/xiaopeng/xui/widget/XDropDownMenuBar;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XDropDownMenuBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;


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

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 51
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setOrientation(I)V

    .line 52
    sget-object p3, Lbyg$n;->XDropDownMenuBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 54
    sget p3, Lbyg$n;->XDropDownMenuBar_dropdown_menu_check_position:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 56
    sget v0, Lbyg$n;->XDropDownMenuBar_dropdown_menu_text_array:I

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    .line 60
    :cond_0
    sget v0, Lbyg$n;->XDropDownMenuBar_dropdown_menu_icon_array:I

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    sget v1, Lbyg$n;->XDropDownMenuBar_dropdown_menu_icon_right:I

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIconRight:I

    .line 62
    sget v1, Lbyg$n;->XDropDownMenuBar_dropdown_menu_icon_tint:I

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 65
    array-length v1, v0

    if-lez v1, :cond_1

    .line 66
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    .line 67
    :goto_0
    array-length v1, v0

    if-ge p4, v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v3, v0, p4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->init(I)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$1;-><init>(Lcom/xiaopeng/xui/widget/XDropDownMenuBar;)V

    invoke-virtual {p1, p2}, Lapr;->b(Lapr$a;)V

    return-void
.end method

.method private init(I)V
    .locals 7

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 87
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 88
    sget v3, Lbyg$j;->x_drop_down_menu_item:I

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 89
    sget v4, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 90
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIcons:[I

    if-eqz v5, :cond_1

    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 92
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

    const/4 v5, 0x4

    .line 97
    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v3, p0, v5}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 98
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne p1, v2, :cond_2

    const/4 v5, 0x1

    .line 100
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 101
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_3
    iget p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setIconTintColor(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x8
        0x0
        0x8
    .end array-data
.end method

.method private updateTextViewStyle(Landroid/widget/TextView;)V
    .locals 2

    .line 239
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbyg$l;->x_font_typeface_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lbyg$m;->XDropDownMenuItemText:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbyg$l;->x_font_typeface_regular:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lbyg$m;->XDropDownMenuItemText:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addTabItem(Ljava/lang/CharSequence;II)V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbyg$j;->x_drop_down_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    sget v1, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->mIconRight:I

    invoke-virtual {v1, p2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setIconTintColor(Landroid/widget/TextView;)V

    .line 131
    invoke-virtual {p0, v0, p3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->addView(Landroid/view/View;I)V

    const/4 p1, 0x4

    .line 132
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-static {v0, p0, p1}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 133
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

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

    const/4 v0, -0x1

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->addTabItem(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public getPosition()I
    .locals 2

    const/4 v0, 0x0

    .line 201
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

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$onVuiElementEvent$0$XDropDownMenuBar(Ljava/lang/Double;Landroid/view/View;)V
    .locals 2

    .line 291
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 293
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :goto_0
    const/4 p2, 0x1

    .line 298
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setPerformVuiAction(Z)V

    .line 299
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setPosition(I)V

    const/4 p1, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setPerformVuiAction(Z)V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 4

    const-string p2, "onBuildVuiElement:"

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setVuiValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 259
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    sget v2, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiPosition(I)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiElementId(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "isTabLayoutChild"

    const/4 v3, 0x1

    .line 269
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 270
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->setVuiProps(Lorg/json/JSONObject;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->logD(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 217
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget v5, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 218
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 220
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v5, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    move v2, v1

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 226
    :goto_1
    invoke-direct {p0, v3}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 229
    invoke-interface {v0, p1, v2, v4}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;->onItemChanged(Landroid/view/View;IZ)V

    .line 231
    :cond_2
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 1

    const-string v0, "xMenuBar onVuiElementEvent"

    .line 285
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 287
    :cond_0
    invoke-virtual {p2, p2}, Lbyf;->getEventValue(Lbyf;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 289
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XDropDownMenuBar$0XksWI7u7DrxVfzu0tO46oOQEwY;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XDropDownMenuBar$0XksWI7u7DrxVfzu0tO46oOQEwY;-><init>(Lcom/xiaopeng/xui/widget/XDropDownMenuBar;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public removeTabItem(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->removeViewAt(I)V

    .line 166
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIconTintColor(I)V
    .locals 3

    .line 147
    iput p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->iconTintColorId:I

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lds;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    invoke-static {v1, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->invalidate()V

    return-void
.end method

.method public setIconTintColor(Landroid/widget/TextView;)V
    .locals 3

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

    invoke-static {v0, v1, v2}, Lds;->c(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    return-void
.end method

.method public setPosition(I)V
    .locals 7

    if-ltz p1, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .line 182
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 183
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

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

    sget v6, Lbyg$h;->x_drop_down_text_menu_item:I

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

    sget v6, Lbyg$h;->x_drop_down_text_menu_item:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 192
    :goto_1
    invoke-direct {p0, v4}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateTextViewStyle(Landroid/widget/TextView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->onItemClickListener:Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 195
    invoke-interface {v0, v3, p1, v2}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar$OnItemClickListener;->onItemChanged(Landroid/view/View;IZ)V

    .line 197
    :cond_3
    invoke-virtual {p0, p0}, Lcom/xiaopeng/xui/widget/XDropDownMenuBar;->updateVui(Landroid/view/View;)V

    return-void

    :cond_4
    :goto_2
    const-string p1, "XMenuBar"

    const-string v0, "position is out of range"

    .line 178
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
