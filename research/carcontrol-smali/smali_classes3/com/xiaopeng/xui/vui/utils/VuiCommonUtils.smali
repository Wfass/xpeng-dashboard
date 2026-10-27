.class public Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;
.super Ljava/lang/Object;
.source "VuiCommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElementType(I)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 156
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 153
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 150
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 147
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 144
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 140
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 136
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 132
    :pswitch_7
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 128
    :pswitch_8
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 125
    :pswitch_9
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 122
    :pswitch_a
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 119
    :pswitch_b
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 116
    :pswitch_c
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 113
    :pswitch_d
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RATINGBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 110
    :pswitch_e
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEARCHVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 107
    :pswitch_f
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->TABHOST:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 104
    :pswitch_10
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 101
    :pswitch_11
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 98
    :pswitch_12
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 95
    :pswitch_13
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 92
    :pswitch_14
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 89
    :pswitch_15
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 86
    :pswitch_16
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 83
    :pswitch_17
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->LISTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 80
    :pswitch_18
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getFeedbackType(I)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 70
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->SOUND:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    goto :goto_0

    .line 67
    :cond_0
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    goto :goto_0

    .line 64
    :cond_1
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->SOUND:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    :goto_0
    return-object p0
.end method

.method public static getViewLeveByPriority(I)Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 34
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL4:Lcom/xiaopeng/vui/commons/VuiPriority;

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    goto :goto_0

    .line 25
    :cond_2
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    goto :goto_0

    .line 22
    :cond_3
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

    :goto_0
    return-object p0
.end method

.method public static getVuiMode(I)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 54
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiMode;->UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiMode;->SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

    goto :goto_0

    .line 44
    :cond_2
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    :goto_0
    return-object p0
.end method
