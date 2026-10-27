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

.method public static getElementType(I)Lbxy;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 156
    :pswitch_0
    sget-object p0, Lbxy;->UNKNOWN:Lbxy;

    goto :goto_0

    .line 153
    :pswitch_1
    sget-object p0, Lbxy;->STATE:Lbxy;

    goto :goto_0

    .line 150
    :pswitch_2
    sget-object p0, Lbxy;->STATEFULBUTTON:Lbxy;

    goto :goto_0

    .line 147
    :pswitch_3
    sget-object p0, Lbxy;->XGROUPHEADER:Lbxy;

    goto :goto_0

    .line 144
    :pswitch_4
    sget-object p0, Lbxy;->XTABLAYOUT:Lbxy;

    goto :goto_0

    .line 140
    :pswitch_5
    sget-object p0, Lbxy;->XSLIDER:Lbxy;

    goto :goto_0

    .line 136
    :pswitch_6
    sget-object p0, Lbxy;->CUSTOM:Lbxy;

    goto :goto_0

    .line 132
    :pswitch_7
    sget-object p0, Lbxy;->SWITCH:Lbxy;

    goto :goto_0

    .line 128
    :pswitch_8
    sget-object p0, Lbxy;->RECYCLEVIEW:Lbxy;

    goto :goto_0

    .line 125
    :pswitch_9
    sget-object p0, Lbxy;->TEXTVIEW:Lbxy;

    goto :goto_0

    .line 122
    :pswitch_a
    sget-object p0, Lbxy;->SCROLLVIEW:Lbxy;

    goto :goto_0

    .line 119
    :pswitch_b
    sget-object p0, Lbxy;->IMAGEVIEW:Lbxy;

    goto :goto_0

    .line 116
    :pswitch_c
    sget-object p0, Lbxy;->IMAGEBUTTON:Lbxy;

    goto :goto_0

    .line 113
    :pswitch_d
    sget-object p0, Lbxy;->RATINGBAR:Lbxy;

    goto :goto_0

    .line 110
    :pswitch_e
    sget-object p0, Lbxy;->SEARCHVIEW:Lbxy;

    goto :goto_0

    .line 107
    :pswitch_f
    sget-object p0, Lbxy;->TABHOST:Lbxy;

    goto :goto_0

    .line 104
    :pswitch_10
    sget-object p0, Lbxy;->SEEKBAR:Lbxy;

    goto :goto_0

    .line 101
    :pswitch_11
    sget-object p0, Lbxy;->PROGRESSBAR:Lbxy;

    goto :goto_0

    .line 98
    :pswitch_12
    sget-object p0, Lbxy;->EDITTEXT:Lbxy;

    goto :goto_0

    .line 95
    :pswitch_13
    sget-object p0, Lbxy;->GROUP:Lbxy;

    goto :goto_0

    .line 92
    :pswitch_14
    sget-object p0, Lbxy;->RADIOGROUP:Lbxy;

    goto :goto_0

    .line 89
    :pswitch_15
    sget-object p0, Lbxy;->RADIOBUTTON:Lbxy;

    goto :goto_0

    .line 86
    :pswitch_16
    sget-object p0, Lbxy;->CHECKBOX:Lbxy;

    goto :goto_0

    .line 83
    :pswitch_17
    sget-object p0, Lbxy;->LISTVIEW:Lbxy;

    goto :goto_0

    .line 80
    :pswitch_18
    sget-object p0, Lbxy;->BUTTON:Lbxy;

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

.method public static getFeedbackType(I)Lbxz;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 70
    sget-object p0, Lbxz;->SOUND:Lbxz;

    goto :goto_0

    .line 67
    :cond_0
    sget-object p0, Lbxz;->TTS:Lbxz;

    goto :goto_0

    .line 64
    :cond_1
    sget-object p0, Lbxz;->SOUND:Lbxz;

    :goto_0
    return-object p0
.end method

.method public static getViewLeveByPriority(I)Lbyb;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 34
    sget-object p0, Lbyb;->LEVEL3:Lbyb;

    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lbyb;->LEVEL4:Lbyb;

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lbyb;->LEVEL3:Lbyb;

    goto :goto_0

    .line 25
    :cond_2
    sget-object p0, Lbyb;->LEVEL2:Lbyb;

    goto :goto_0

    .line 22
    :cond_3
    sget-object p0, Lbyb;->LEVEL1:Lbyb;

    :goto_0
    return-object p0
.end method

.method public static getVuiMode(I)Lbya;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 54
    sget-object p0, Lbya;->NORMAL:Lbya;

    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lbya;->UNDERSTOOD:Lbya;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lbya;->SILENT:Lbya;

    goto :goto_0

    .line 44
    :cond_2
    sget-object p0, Lbya;->DISABLED:Lbya;

    :goto_0
    return-object p0
.end method
