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
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;

    .line 138
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "stateNames":[Ljava/lang/String;
    if-ltz p0, :cond_1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-gt p0, v1, :cond_1

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    .local v1, "props":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .local v2, "states":Lorg/json/JSONArray;
    :try_start_0
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    move-object v0, v3

    .line 146
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 147
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v4, "state":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "stateName":Ljava/lang/String;
    aput-object v5, v0, v3

    .line 150
    aget-object v6, p1, v3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    .end local v4    # "state":Lorg/json/JSONObject;
    .end local v5    # "stateName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "i":I
    :cond_0
    const-string v3, "states"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v3, "curState"

    aget-object v4, v0, p0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-object v1

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "var9":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    .end local v0    # "stateNames":[Ljava/lang/String;
    .end local v1    # "props":Lorg/json/JSONObject;
    .end local v2    # "states":Lorg/json/JSONArray;
    .end local v3    # "var9":Lorg/json/JSONException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getElementType(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1
    .param p0, "view"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 42
    :cond_0
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 45
    :cond_1
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_2

    .line 46
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 48
    :cond_2
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_3

    .line 49
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 51
    :cond_3
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioButton;

    if-eqz v0, :cond_4

    .line 52
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 54
    :cond_4
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;

    if-eqz v0, :cond_5

    .line 55
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 57
    :cond_5
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_6

    .line 58
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 60
    :cond_6
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_7

    .line 61
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 63
    :cond_7
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;

    if-eqz v0, :cond_8

    .line 64
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 66
    :cond_8
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;

    if-eqz v0, :cond_9

    .line 67
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 69
    :cond_9
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;

    if-eqz v0, :cond_a

    .line 70
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 72
    :cond_a
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_b

    .line 73
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 75
    :cond_b
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;

    if-eqz v0, :cond_c

    .line 76
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 78
    :cond_c
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XEditText;

    if-eqz v0, :cond_d

    .line 79
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 81
    :cond_d
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;

    if-eqz v0, :cond_e

    .line 82
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 84
    :cond_e
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;

    if-eqz v0, :cond_f

    .line 85
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 87
    :cond_f
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    if-eqz v0, :cond_10

    .line 88
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TIMEPICKER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 90
    :cond_10
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;

    if-eqz v0, :cond_11

    .line 91
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 93
    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 94
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0

    .line 96
    :cond_12
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object v0
.end method

.method public static isPerformVuiAction(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p0}, Lcom/xiaopeng/xui/vui/utils/VuiUtils;->isPerformVuiActionAndReset(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isPerformVuiActionAndReset(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 116
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 118
    .local v0, "xViewVui":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v2

    .line 119
    .local v2, "isPerformVuiAction":Z
    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setPerformVuiAction(Z)V

    .line 120
    return v2

    .line 122
    .end local v0    # "xViewVui":Lcom/xiaopeng/xui/vui/VuiView;
    .end local v2    # "isPerformVuiAction":Z
    :cond_0
    return v1
.end method

.method public static isPerformVuiActionNonReset(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 108
    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 110
    .local v0, "xViewVui":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->isPerformVuiAction()Z

    move-result v1

    return v1

    .line 112
    .end local v0    # "xViewVui":Lcom/xiaopeng/xui/vui/VuiView;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setStatefulButtonAttr(Lcom/xiaopeng/xui/vui/VuiView;I[Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Lcom/xiaopeng/xui/vui/VuiView;
    .param p1, "currIndex"    # I
    .param p2, "vuilabels"    # [Ljava/lang/String;

    .line 126
    if-nez p0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiUtils;->createStatefulButtonData(I[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    .local v0, "props":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 131
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 132
    const-string v1, "SetValue"

    invoke-interface {p0, v1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiAction(Ljava/lang/String;)V

    .line 133
    invoke-interface {p0, v0}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiProps(Lorg/json/JSONObject;)V

    .line 135
    :cond_1
    return-void
.end method
