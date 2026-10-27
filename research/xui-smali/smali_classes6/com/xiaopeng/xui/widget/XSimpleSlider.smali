.class public Lcom/xiaopeng/xui/widget/XSimpleSlider;
.super Lxiaopeng/widget/SimpleSlider;
.source "XSimpleSlider.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# static fields
.field private static final DEFAULT_VUI_AS_TOUCH:Z = false

.field private static final TAG:Ljava/lang/String; = "XSimpleSlider"


# instance fields
.field private mVuiAsTouch:Z

.field private mVuiInterval:F

.field private mVuiMaxValue:I

.field private mVuiMinValue:I

.field private mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    .line 37
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    .line 38
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    .line 56
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xui/widget/-$$Lambda$1nSZItY1LxLjhgUMuj4enwCbqSg;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$1nSZItY1LxLjhgUMuj4enwCbqSg;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 58
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 60
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiMinValue:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    .line 61
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiMaxValue:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    .line 62
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiInterval:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    .line 63
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiAsTouch:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    .line 64
    const-string v0, "XSimpleSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XSimpleSlider init, vuiAsTouch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", default:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->addOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XSimpleSlider;I)V
    .locals 2
    .param p1, "index"    # I

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setPerformVuiAction(Z)V

    .line 155
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->onStartTrackingTouch()V

    .line 158
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgressInternal(IZZ)V

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->onStopTrackingTouch()V

    .line 162
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setPerformVuiAction(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->showVuiFloating()V

    .line 164
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onAttachedToWindow()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 105
    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVuiValue(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "customSetProps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "customSetProps"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 124
    .local v1, "customSet":Z
    if-eqz v1, :cond_1

    .line 125
    return-object v0

    .line 128
    .end local v1    # "customSet":Z
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 130
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 132
    :cond_2
    const-string v2, "minValue"

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMin()I

    move-result v3

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 133
    const-string v2, "maxValue"

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMax()I

    move-result v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string v2, "interval"

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    float-to-double v3, v3

    goto :goto_2

    :cond_5
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_2
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3

    .line 136
    :catch_0
    move-exception v1

    .line 139
    :goto_3
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 93
    invoke-super {p0, p1}, Lxiaopeng/widget/SimpleSlider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 109
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onDetachedFromWindow()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 113
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 192
    invoke-super {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->onVisibilityChanged(Landroid/view/View;I)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->onVisibilityChangedThemeRefresh(I)V

    .line 194
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 144
    const-string v0, "simple slider onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->logD(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v1, v2, :cond_1

    .line 147
    return v0

    .line 149
    :cond_1
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 150
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 152
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMin()I

    move-result v2

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMax()I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    new-instance v2, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$cbCV5teEuZ1bTu_ZhK-EESMq3zI;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;I)V

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->post(Ljava/lang/Runnable;)Z

    .line 165
    return v3

    .line 152
    :cond_3
    :goto_0
    return v3

    .line 167
    .end local v0    # "index":I
    :cond_4
    return v0
.end method

.method public setThemeRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public setVuiAsTouch(Z)V
    .locals 3
    .param p1, "vuiAsTouch"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    .line 88
    const-string v0, "XSimpleSlider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XSimpleSlider setVuiAsTouch, vuiAsTouch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public showVuiFloating()V
    .locals 6

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getPaddingStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 172
    .local v0, "offsetStart":F
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getCurrentVisualScale()F

    move-result v2

    mul-float/2addr v1, v2

    .line 174
    .local v1, "currentValue":F
    add-float v2, v0, v1

    float-to-int v2, v2

    .line 175
    .local v2, "offset":I
    const-string v3, "XSimpleSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showVuiFloating offsetStart:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", range:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getRange()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {v3, v4}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    .line 181
    return-void
.end method
