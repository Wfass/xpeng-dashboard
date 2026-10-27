.class public Lcom/xiaopeng/xui/vui/a/b;
.super Ljava/lang/Object;
.source "VuiViewUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static mHandler:Landroid/os/Handler;

.field static mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiUpdate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xui/vui/a/b;->mThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public static a(Lcom/xiaopeng/vui/commons/a;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 2

    .line 108
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xui/vui/a/b;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/xiaopeng/xui/vui/a/b;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaopeng/xui/vui/a/b;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/xui/vui/a/b;->mHandler:Landroid/os/Handler;

    .line 112
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/vui/a/b;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/xiaopeng/xui/vui/a/b;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/xui/vui/a/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xui/vui/a/b$1;-><init>(Lcom/xiaopeng/vui/commons/a;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    goto :goto_0

    .line 122
    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_0
    return-void
.end method

.method public static p(Ljava/lang/Object;)Lcom/xiaopeng/vui/commons/VuiElementType;
    .locals 1

    .line 43
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 44
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YX:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 46
    :cond_0
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XImageButton;

    if-eqz v0, :cond_1

    .line 47
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YW:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 49
    :cond_1
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_2

    .line 50
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YG:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 52
    :cond_2
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_3

    .line 53
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YU:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 55
    :cond_3
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioButton;

    if-eqz v0, :cond_4

    .line 56
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YJ:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 58
    :cond_4
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XCheckBox;

    if-eqz v0, :cond_5

    .line 59
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YI:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 61
    :cond_5
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz v0, :cond_6

    .line 62
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YS:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 64
    :cond_6
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRecyclerView;

    if-eqz v0, :cond_7

    .line 65
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YT:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 67
    :cond_7
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;

    if-eqz v0, :cond_8

    .line 68
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YN:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 70
    :cond_8
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XScrollView;

    if-eqz v0, :cond_9

    .line 71
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YV:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 73
    :cond_9
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/slider/XSlider;

    if-eqz v0, :cond_a

    .line 74
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YZ:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 76
    :cond_a
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout;

    if-eqz v0, :cond_b

    .line 77
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->Za:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 79
    :cond_b
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSegmented;

    if-eqz v0, :cond_c

    .line 80
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->Za:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 82
    :cond_c
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XRadioGroup;

    if-eqz v0, :cond_d

    .line 83
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YK:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 85
    :cond_d
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XEditText;

    if-eqz v0, :cond_e

    .line 86
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YM:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 88
    :cond_e
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XGroupHeader;

    if-eqz v0, :cond_f

    .line 89
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->Zd:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 91
    :cond_f
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;

    if-eqz v0, :cond_10

    .line 92
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YO:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 94
    :cond_10
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    if-eqz v0, :cond_11

    .line 95
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->Zf:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 97
    :cond_11
    instance-of v0, p0, Lcom/xiaopeng/xui/widget/XViewPager;

    if-eqz v0, :cond_12

    .line 98
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->Ze:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 100
    :cond_12
    instance-of p0, p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_13

    .line 101
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->YL:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0

    .line 103
    :cond_13
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiElementType;->Zi:Lcom/xiaopeng/vui/commons/VuiElementType;

    return-object p0
.end method
