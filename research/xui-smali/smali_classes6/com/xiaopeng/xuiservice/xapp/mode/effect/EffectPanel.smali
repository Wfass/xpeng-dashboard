.class public Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "EffectPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectPanel"


# instance fields
.field private mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

.field private mEffectSetsTextView:Landroid/widget/TextView;

.field private mMusicEffectLayout:Landroid/widget/LinearLayout;

.field private mMusicEffectSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mReverberationSlide:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field private mTextViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    .line 90
    return-void
.end method

.method private refreshMusicSwitch()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->isMusicEffectEnable()Z

    move-result v0

    .line 100
    .local v0, "isMusicEffectEnable":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->isMusicEffectSupport()Z

    move-result v1

    .line 101
    .local v1, "isMusicEffectSupport":Z
    const-string v2, "EffectPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshMusicSwitch isMusicEffectEnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " &isMusicEffectSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 104
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->refreshMusicSwitchUI(Z)V

    .line 105
    return-void
.end method

.method private refreshMusicSwitchUI(Z)V
    .locals 3
    .param p1, "isMusicEffectSupport"    # Z

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mTextViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mTextViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectSetsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mTextViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    return-void
.end method

.method private refreshReverberationSlide()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->getEchoValue()I

    move-result v0

    .line 94
    .local v0, "value":I
    const-string v1, "EffectPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshReverberationSlide  reverberationValue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mReverberationSlide:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 96
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->refreshReverberationSlide()V

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->refreshMusicSwitch()V

    .line 86
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-ne p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->setMusicEffect(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onFinishInflate()V

    .line 71
    const v0, 0x7f09014d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mReverberationSlide:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mReverberationSlide:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 75
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mMusicEffectLayout:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectSetsTextView:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectSetsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mTextViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    return-void
.end method

.method public onProgressChanged(Lxiaopeng/widget/SimpleSlider;IZ)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "progress"    # I
    .param p3, "b"    # Z

    .line 47
    return-void
.end method

.method public onStartTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 52
    return-void
.end method

.method public onStopTrackingTouch(Lxiaopeng/widget/SimpleSlider;)V
    .locals 2
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectPanel;->mEffectManager:Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectManager;->setEchoValue(I)V

    .line 59
    :cond_0
    return-void
.end method
