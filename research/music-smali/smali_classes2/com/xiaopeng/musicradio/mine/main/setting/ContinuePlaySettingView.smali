.class public Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "ContinuePlaySettingView.java"


# instance fields
.field private final mAccountType:I

.field private mSettingSwitch:Lcom/xiaopeng/xui/widget/XSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mAccountType:I

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mAccountType:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->setVuiLabel(Z)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->layout_continue_play_setting:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->switch_setting:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mSettingSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mSettingSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mAccountType:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ar;->a(I)Z

    move-result v0

    .line 56
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->setVuiLabel(Z)V

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mSettingSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    return-void
.end method

.method private setVuiLabel(Z)V
    .locals 3

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/mine/a$e;->setting_continue_play_close_vui:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->setting_continue_play_open_vui:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mSettingSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiLabel(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bJ:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/setting/ContinuePlaySettingView;->mSettingSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
