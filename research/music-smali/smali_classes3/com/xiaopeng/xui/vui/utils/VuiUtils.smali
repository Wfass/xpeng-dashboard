.class public Lcom/xiaopeng/xui/vui/utils/VuiUtils;
.super Ljava/lang/Object;
.source "VuiUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStatefulButtonData(I[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    if-eqz p1, :cond_1

    .line 138
    array-length v0, p1

    if-eqz v0, :cond_1

    if-ltz p0, :cond_1

    .line 140
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_1

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 145
    :try_start_0
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 146
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 147
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    aput-object v5, v2, v3

    .line 150
    aget-object v3, p1, v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v3, v6

    goto :goto_0

    :cond_0
    const-string p1, "states"

    .line 154
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "curState"

    .line 155
    aget-object p0, v2, p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getElementType(Ljava/lang/Object;)Lbxy;
    .locals 1

    .line 39
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 40
    sget-object p0, Lbxy;->IMAGEVIEW:Lbxy;

    return-object p0

    .line 42
    :cond_0
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_1

    .line 43
    sget-object p0, Lbxy;->IMAGEBUTTON:Lbxy;

    return-object p0

    .line 45
    :cond_1
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_2

    .line 46
    sget-object p0, Lbxy;->BUTTON:Lbxy;

    return-object p0

    .line 48
    :cond_2
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_3

    .line 49
    sget-object p0, Lbxy;->TEXTVIEW:Lbxy;

    return-object p0

    .line 51
    :cond_3
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioButton;

    if-eqz v0, :cond_4

    .line 52
    sget-object p0, Lbxy;->RADIOBUTTON:Lbxy;

    return-object p0

    .line 54
    :cond_4
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;

    if-eqz v0, :cond_5

    .line 55
    sget-object p0, Lbxy;->CHECKBOX:Lbxy;

    return-object p0

    .line 57
    :cond_5
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_6

    .line 58
    sget-object p0, Lbxy;->SWITCH:Lbxy;

    return-object p0

    .line 60
    :cond_6
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_7

    .line 61
    sget-object p0, Lbxy;->RECYCLEVIEW:Lbxy;

    return-object p0

    .line 63
    :cond_7
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;

    if-eqz v0, :cond_8

    .line 64
    sget-object p0, Lbxy;->PROGRESSBAR:Lbxy;

    return-object p0

    .line 66
    :cond_8
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;

    if-eqz v0, :cond_9

    .line 67
    sget-object p0, Lbxy;->SCROLLVIEW:Lbxy;

    return-object p0

    .line 69
    :cond_9
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;

    if-eqz v0, :cond_a

    .line 70
    sget-object p0, Lbxy;->XSLIDER:Lbxy;

    return-object p0

    .line 72
    :cond_a
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_b

    .line 73
    sget-object p0, Lbxy;->XTABLAYOUT:Lbxy;

    return-object p0

    .line 75
    :cond_b
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;

    if-eqz v0, :cond_c

    .line 76
    sget-object p0, Lbxy;->RADIOGROUP:Lbxy;

    return-object p0

    .line 78
    :cond_c
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XEditText;

    if-eqz v0, :cond_d

    .line 79
    sget-object p0, Lbxy;->EDITTEXT:Lbxy;

    return-object p0

    .line 81
    :cond_d
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;

    if-eqz v0, :cond_e

    .line 82
    sget-object p0, Lbxy;->XGROUPHEADER:Lbxy;

    return-object p0

    .line 84
    :cond_e
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;

    if-eqz v0, :cond_f

    .line 85
    sget-object p0, Lbxy;->SEEKBAR:Lbxy;

    return-object p0

    .line 87
    :cond_f
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    if-eqz v0, :cond_10

    .line 88
    sget-object p0, Lbxy;->TIMEPICKER:Lbxy;

    return-object p0

    .line 90
    :cond_10
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;

    if-eqz v0, :cond_11

    .line 91
    sget-object p0, Lbxy;->VIEWPAGER:Lbxy;

    return-object p0

    .line 93
    :cond_11
    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_12

    .line 94
    sget-object p0, Lbxy;->GROUP:Lbxy;

    return-object p0

    .line 96
    :cond_12
    sget-object p0, Lbxy;->UNKNOWN:Lbxy;

    return-object p0
.end method

.method public static isPerformVuiAction(Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/utils/VuiUtils;->isPerformVuiActionAndReset(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isPerformVuiActionAndReset(Landroid/view/View;)Z
    .locals 2

    .line 116
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 118
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v0

    .line 119
    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setPerformVuiAction(Z)V

    return v0

    :cond_0
    return v1
.end method

.method public static isPerformVuiActionNonReset(Landroid/view/View;)Z
    .locals 1

    .line 108
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    .line 109
    check-cast p0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 110
    invoke-interface {p0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiUtils;->createStatefulButtonData(I[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    sget-object p2, Lbxy;->STATEFULBUTTON:Lbxy;

    invoke-interface {p0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lbxy;)V

    const-string p2, "SetValue"

    .line 132
    invoke-interface {p0, p2}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 133
    invoke-interface {p0, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
