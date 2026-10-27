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

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 51
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    .line 37
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 38
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    .line 56
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 57
    invoke-virtual {p3}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p3

    new-instance p4, Lcom/xiaopeng/xui/widget/-$$Lambda$v_v64_sjwbQiAisWTczcElMt2gw;

    invoke-direct {p4, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$v_v64_sjwbQiAisWTczcElMt2gw;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V

    invoke-virtual {p3, p4}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 58
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 59
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiMinValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    .line 61
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiMaxValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    .line 62
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiInterval:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    .line 63
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XSimpleSlider_simpleSlider_vuiAsTouch:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "XSimpleSlider init, vuiAsTouch:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p4, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ", default:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XSimpleSlider"

    invoke-static {p3, p2}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider$1;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->addOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onVuiElementEvent$0$XSimpleSlider(I)V
    .locals 2

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setPerformVuiAction(Z)V

    .line 157
    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->onStartTrackingTouch()V

    :cond_0
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgressInternal(IZZ)V

    .line 161
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->onStopTrackingTouch()V

    .line 164
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setPerformVuiAction(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->showVuiFloating()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onAttachedToWindow()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->vuiViewAttachedToWindow()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3

    const-string p1, "customSetProps"

    const/4 p2, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne v0, v1, :cond_0

    return-object p2

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVuiValue(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2

    .line 132
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    const-string v0, "minValue"

    .line 134
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMinValue:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMin()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "maxValue"

    .line 135
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiMaxValue:I

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMax()I

    move-result v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "interval"

    .line 136
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiInterval:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    float-to-double v1, v1

    goto :goto_2

    :cond_5
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_2
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lxiaopeng/widget/SimpleSlider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 194
    invoke-super {p0, p1, p2}, Lxiaopeng/widget/SimpleSlider;->onVisibilityChanged(Landroid/view/View;I)V

    .line 195
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2

    const-string v0, "simple slider onVuiElementEvent"

    .line 146
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getVuiElementType()Lcom/xiaopeng/vui/commons/VuiElementType;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    if-ne p1, v1, :cond_1

    return v0

    .line 151
    :cond_1
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_3

    .line 153
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMin()I

    move-result p2

    const/4 v0, 0x1

    if-lt p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getMax()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 155
    :cond_2
    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$3FRmKxadPLJ3AlTBNRQ0X6ALzoQ;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSimpleSlider$3FRmKxadPLJ3AlTBNRQ0X6ALzoQ;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;I)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v0
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVuiAsTouch(Z)V
    .locals 1

    .line 87
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XSimpleSlider setVuiAsTouch, vuiAsTouch:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mVuiAsTouch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XSimpleSlider"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showVuiFloating()V
    .locals 5

    .line 173
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

    .line 174
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

    add-float v2, v0, v1

    float-to-int v2, v2

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showVuiFloating offsetStart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", progress:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", range:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getRange()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " currentValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XSimpleSlider"

    .line 177
    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, v2, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    return-void
.end method
