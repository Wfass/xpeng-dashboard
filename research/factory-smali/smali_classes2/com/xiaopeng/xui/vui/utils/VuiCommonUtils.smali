.class public Lcom/xiaopeng/xui/vui/utils/VuiCommonUtils;
.super Ljava/lang/Object;
.source "VuiCommonUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElementType(I)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1
    .param p0, "value"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 150
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    goto :goto_0

    .line 147
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 148
    .local v0, "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 144
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 145
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 140
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 141
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 136
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CUSTOM:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 137
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 132
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_4
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 133
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 128
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_5
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 129
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 125
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_6
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 126
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 122
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_7
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 123
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 119
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_8
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 120
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 116
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_9
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 117
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 113
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_a
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RATINGBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 114
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 110
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_b
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEARCHVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 111
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 107
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_c
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->TABHOST:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 108
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 104
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_d
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 105
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 101
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_e
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 102
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 98
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_f
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 99
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 95
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_10
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 96
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 92
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_11
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 93
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 89
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_12
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 90
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 86
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_13
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 87
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 83
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_14
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->LISTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 84
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    goto :goto_0

    .line 80
    .end local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    :pswitch_15
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 81
    .restart local v0    # "elementType":Lcom/xiaopeng/vui/commons/VuiElementType;
    nop

    .line 150
    :goto_0
    nop

    .line 155
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFeedbackType(I)Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    .locals 1
    .param p0, "value"    # I

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 70
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->SOUND:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    goto :goto_0

    .line 67
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->TTS:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 68
    .local v0, "vuiFeedbackType":Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    goto :goto_0

    .line 64
    .end local v0    # "vuiFeedbackType":Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiFeedbackType;->SOUND:Lcom/xiaopeng/vui/commons/VuiFeedbackType;

    .line 65
    .restart local v0    # "vuiFeedbackType":Lcom/xiaopeng/vui/commons/VuiFeedbackType;
    nop

    .line 70
    :goto_0
    nop

    .line 74
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getViewLeveByPriority(I)Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1
    .param p0, "priority"    # I

    .line 20
    packed-switch p0, :pswitch_data_0

    .line 34
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    goto :goto_0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL4:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 32
    .local v0, "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    goto :goto_0

    .line 28
    .end local v0    # "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 29
    .restart local v0    # "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    goto :goto_0

    .line 25
    .end local v0    # "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 26
    .restart local v0    # "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    goto :goto_0

    .line 22
    .end local v0    # "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 23
    .restart local v0    # "viewLeveEnum":Lcom/xiaopeng/vui/commons/VuiPriority;
    nop

    .line 34
    :goto_0
    nop

    .line 38
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVuiMode(I)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1
    .param p0, "value"    # I

    .line 42
    packed-switch p0, :pswitch_data_0

    .line 54
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    goto :goto_0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 51
    .local v0, "vuiMode":Lcom/xiaopeng/vui/commons/VuiMode;
    goto :goto_0

    .line 47
    .end local v0    # "vuiMode":Lcom/xiaopeng/vui/commons/VuiMode;
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 48
    .restart local v0    # "vuiMode":Lcom/xiaopeng/vui/commons/VuiMode;
    goto :goto_0

    .line 44
    .end local v0    # "vuiMode":Lcom/xiaopeng/vui/commons/VuiMode;
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 45
    .restart local v0    # "vuiMode":Lcom/xiaopeng/vui/commons/VuiMode;
    nop

    .line 54
    :goto_0
    nop

    .line 57
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
