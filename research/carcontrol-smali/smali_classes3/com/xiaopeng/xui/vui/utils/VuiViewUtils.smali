.class public Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;
.super Ljava/lang/Object;
.source "VuiViewUtils.java"


# static fields
.field static mHandler:Landroid/os/Handler;

.field static mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiUpdate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->mThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getElementType(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1

    .line 49
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 50
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_1

    .line 53
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->IMAGEBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 55
    :cond_1
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_2

    .line 56
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 58
    :cond_2
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_3

    .line 59
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->TEXTVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 61
    :cond_3
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioButton;

    if-eqz v0, :cond_4

    .line 62
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 64
    :cond_4
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;

    if-eqz v0, :cond_5

    .line 65
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 67
    :cond_5
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_6

    .line 68
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 70
    :cond_6
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_7

    .line 71
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 73
    :cond_7
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;

    if-eqz v0, :cond_8

    .line 74
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->PROGRESSBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 76
    :cond_8
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;

    if-eqz v0, :cond_9

    .line 77
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 79
    :cond_9
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XNestedScrollView;

    if-eqz v0, :cond_a

    .line 80
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SCROLLVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 82
    :cond_a
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;

    if-eqz v0, :cond_b

    .line 83
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 85
    :cond_b
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_c

    .line 86
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 88
    :cond_c
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;

    if-eqz v0, :cond_d

    .line 89
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 91
    :cond_d
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;

    if-eqz v0, :cond_e

    .line 92
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOGROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 94
    :cond_e
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XEditText;

    if-eqz v0, :cond_f

    .line 95
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->EDITTEXT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 97
    :cond_f
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;

    if-eqz v0, :cond_10

    .line 98
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XGROUPHEADER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 100
    :cond_10
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;

    if-eqz v0, :cond_11

    .line 101
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 103
    :cond_11
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    if-eqz v0, :cond_12

    .line 104
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->TIMEPICKER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 106
    :cond_12
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;

    if-eqz v0, :cond_13

    .line 107
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->VIEWPAGER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 109
    :cond_13
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XJumpButton;

    if-eqz v0, :cond_14

    .line 110
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 112
    :cond_14
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XMenuBar;

    if-eqz v0, :cond_15

    .line 113
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 115
    :cond_15
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    if-eqz v0, :cond_16

    .line 116
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 118
    :cond_16
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    if-eqz v0, :cond_17

    .line 119
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 121
    :cond_17
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XOffsetView;

    if-eqz v0, :cond_18

    .line 122
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 124
    :cond_18
    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_19

    .line 125
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->GROUP:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 127
    :cond_19
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->UNKNOWN:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0
.end method

.method public static updateVui(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 2

    .line 132
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->mHandler:Landroid/os/Handler;

    .line 136
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 137
    new-instance v1, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xui/vui/utils/VuiViewUtils$1;-><init>(Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
