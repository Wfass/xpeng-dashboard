.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "JoystickQuickMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "JoystickQuickMenuView"


# instance fields
.field private mEnableJoystick:Lcom/xiaopeng/xui/widget/XSwitch;

.field mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

.field private mShowKeyConfig:Landroid/view/View;

.field private mShowPopupBluetooth:Landroid/view/View;

.field private mSwitchGroup:Landroid/view/View;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mXAppViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowKeyConfig:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;
    .param p1, "x1"    # Z

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->refershViewStatus(Z)V

    return-void
.end method

.method private dismissJoystickMenu()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mXAppViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mXAppViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;->dissmissJoystickMenu()V

    .line 153
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowManager:Landroid/view/WindowManager;

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->initWindowLayoutParams()V

    .line 73
    return-void
.end method

.method private initWindowLayoutParams()V
    .locals 2

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    return-void
.end method

.method private refershViewStatus(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowPopupBluetooth:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mSwitchGroup:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowKeyConfig:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method private showKeyConfig()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mXAppViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mXAppViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;->showKeyConfigView()V

    .line 147
    :cond_0
    return-void
.end method

.method private showPopupBluetooth()V
    .locals 2

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.intent.action.POPUP_BLUETOOTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method


# virtual methods
.method public addToWindowAtPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method public hideOrShow(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->addToWindowAtPosition(II)V

    .line 53
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 108
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->isHidDeviceConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->refershViewStatus(Z)V

    .line 110
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->registerListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;)V

    .line 111
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090050

    if-eq v0, v1, :cond_1

    const v1, 0x7f090056

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->dismissJoystickMenu()V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->showPopupBluetooth()V

    .line 125
    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->showKeyConfig()V

    .line 129
    nop

    .line 134
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 116
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mHidDeviceStateListener:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->unregisterListener(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager$HidDeviceStateListener;)V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onFinishInflate()V

    .line 88
    const v0, 0x7f090056

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowPopupBluetooth:Landroid/view/View;

    .line 89
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowKeyConfig:Landroid/view/View;

    .line 90
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mSwitchGroup:Landroid/view/View;

    .line 91
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mEnableJoystick:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowPopupBluetooth:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/-$$Lambda$dwEs42xb91v93HCZ612ebuHeEz8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/-$$Lambda$dwEs42xb91v93HCZ612ebuHeEz8;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mShowKeyConfig:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/-$$Lambda$dwEs42xb91v93HCZ612ebuHeEz8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/-$$Lambda$dwEs42xb91v93HCZ612ebuHeEz8;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mEnableJoystick:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/EventProcessor;->isJoystickEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mEnableJoystick:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/HidDeviceManager;->isHidDeviceConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->refershViewStatus(Z)V

    .line 104
    return-void
.end method

.method public removeFromWindow()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setXAppViewRoot(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;)V
    .locals 0
    .param p1, "xAppViewRoot"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;->mXAppViewRoot:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppViewRoot;

    .line 45
    return-void
.end method
