.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "QsPanel.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;
.implements Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QsPanel"


# instance fields
.field private mAttachPkgName:Ljava/lang/String;

.field private mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

.field mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mClearDataView:Lcom/xiaopeng/xui/widget/XButton;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentTemperature:Landroid/widget/TextView;

.field private mDataRepository:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

.field private mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

.field private mDisplayId:I

.field private mEnableGamePadSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mEnableGamePadView:Landroid/view/View;

.field private mGameDoubtBtn:Landroid/widget/ImageButton;

.field private mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

.field private mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

.field private mSoundStreamType:I

.field private mTempSubTextSize:I

.field private mTempSuffixSize:I

.field private mTemperatureCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

.field private mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

.field private mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

.field private mUserControlQsListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mXpDisplayManager:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getInstance()Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDataRepository:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mXpDisplayManager:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    .line 344
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/UiHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 357
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

    .line 452
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    .line 468
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$6;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshSoundTypeAndUI()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshTempertureUI(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xui/widget/XSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
    .param p1, "x1"    # I

    .line 54
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getTargetStreamType()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshControlCheckBox(Z)V

    return-void
.end method

.method private addVCUEventListener()V
    .locals 2

    .line 388
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 389
    return-void
.end method

.method private ensureLayoutParamsLegal()V
    .locals 5

    .line 120
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/screen/ScreenTaskManager;

    move-result-object v0

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManager;->getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v0

    .line 121
    .local v0, "windowRect":Landroid/graphics/Rect;
    const v1, 0x7f070122

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v1

    .line 122
    .local v1, "naviBarHeight":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    if-le v2, v3, :cond_0

    .line 123
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 125
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    if-nez v2, :cond_1

    .line 127
    const v2, 0x7f0700ac

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getDimen(I)I

    move-result v2

    .line 128
    .local v2, "viewWidth":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    .line 129
    .local v3, "rightEdge":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v4, v3, :cond_1

    .line 130
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 133
    .end local v2    # "viewWidth":I
    .end local v3    # "rightEdge":I
    :cond_1
    return-void
.end method

.method private getTargetStreamType()I
    .locals 3

    .line 438
    const/4 v0, 0x3

    .line 439
    .local v0, "targetStreamType":I
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 440
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const/16 v0, 0xd

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->isAvasEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const/16 v0, 0xb

    .line 445
    :cond_1
    :goto_0
    return v0
.end method

.method private getTemperature(I)Landroid/text/SpannableString;
    .locals 8
    .param p1, "temperature"    # I

    .line 374
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 375
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getConvertValue(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "origin":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 379
    .local v1, "originLen":I
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2103"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 380
    .local v2, "ss":Landroid/text/SpannableString;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 381
    .local v3, "pointIndex":I
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTempSubTextSize:I

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 v5, 0x12

    invoke-virtual {v2, v4, v3, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 382
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget v7, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTempSuffixSize:I

    invoke-direct {v4, v7, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v4, v1, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 383
    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureSuperscriptSpan;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v4, v1, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 384
    return-object v2
.end method

.method private init()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->initWindowLayoutParams()V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTempSubTextSize:I

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTempSuffixSize:I

    .line 147
    return-void
.end method

.method private initTemperatureState()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshTempertureUI(I)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureCallback:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->setCallback(Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager$Callback;)V

    .line 221
    return-void
.end method

.method private initWindowLayoutParams()V
    .locals 2

    .line 208
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->intentFlags:I

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 216
    return-void
.end method

.method private isAvasEnable()Z
    .locals 3

    .line 449
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_speaker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isEvSysReady()Z
    .locals 5

    .line 406
    const/4 v0, 0x0

    move v1, v0

    .line 408
    .local v1, "ready":Z
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    const-string/jumbo v3, "xp_vcu"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/vcu/CarVcuManager;

    .line 410
    .local v2, "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {v2}, Landroid/car/hardware/vcu/CarVcuManager;->getEvSysReady()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    nop

    .line 414
    .end local v1    # "ready":Z
    .end local v2    # "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    .local v0, "ready":Z
    :cond_0
    move v1, v0

    .line 414
    .end local v0    # "ready":Z
    .restart local v1    # "ready":Z
    :cond_1
    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 415
    :goto_0
    const-string v0, "QsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEvSysReady:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return v1
.end method

.method private refreshControlCheckBox(Z)V
    .locals 2
    .param p1, "isEvReady"    # Z

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method private refreshSoundTypeAndUI()V
    .locals 6

    .line 329
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getTargetStreamType()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    const v1, 0x7f090186

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 331
    .local v0, "soundImg":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    const v2, 0x7f090187

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    .local v1, "soundText":Landroid/widget/TextView;
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 333
    const v2, 0x7f0801c6

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 336
    :cond_0
    const v2, 0x7f0801c8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 339
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getStreamVolume(I)I

    move-result v2

    .line 340
    .local v2, "currentVolume":I
    const-string v3, "QsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " current volume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 342
    return-void
.end method

.method private refreshTempertureUI(I)V
    .locals 4
    .param p1, "state"    # I

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getConvertValue(I)I

    move-result v0

    .line 366
    .local v0, "realTemperature":I
    const-string v1, "QsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quickmenu refreshTempertureUI realTemperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    if-eq v0, p1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mCurrentTemperature:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getTemperature(I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method private registerAvasObserver()V
    .locals 4

    .line 305
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "avas_speaker"

    .line 306
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 305
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    return-void
.end method

.method private registerScreenBrightness()V
    .locals 4

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDataRepository:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    .line 300
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getBrightnessKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mContentObserver:Landroid/database/ContentObserver;

    .line 299
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    return-void
.end method

.method private registerSoundCallback()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->addOnVolumeChangedListener(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;)V

    .line 317
    return-void
.end method

.method private removeVCUEventListener()V
    .locals 2

    .line 392
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 393
    return-void
.end method

.method private unRegisterScreenBrightness()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    return-void
.end method

.method private unregisterSoundCallback()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->removeOnVolumeChangedListener(Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager$OnVolumeChangedListener;)V

    .line 321
    return-void
.end method


# virtual methods
.method public addToWindowAtPosition(Ljava/lang/String;III)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 107
    :cond_0
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mAttachPkgName:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->ensureLayoutParamsLegal()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToWindowAtPosition error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mUserControlQsListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mUserControlQsListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;->onUserControlQS(I)V

    .line 279
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentBrightnessState()I
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mXpDisplayManager:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDataRepository:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->getScreenBrightness(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->getUIProgressByReal(I)I

    move-result v0

    .line 325
    .local v0, "brightness":I
    return v0
.end method

.method public hideOrShow(Ljava/lang/String;III)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->addToWindowAtPosition(Ljava/lang/String;III)V

    .line 101
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 195
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onAttachedToWindow()V

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshSoundTypeAndUI()V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getCurrentBrightnessState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->registerSoundCallback()V

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->registerScreenBrightness()V

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->registerAvasObserver()V

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->initTemperatureState()V

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->isEvSysReady()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->refreshControlCheckBox(Z)V

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->addVCUEventListener()V

    .line 204
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->registerListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;)V

    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09004d

    if-eq v0, v1, :cond_1

    const v1, 0x7f090053

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->removeFromWindow(I)V

    .line 429
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showGameDetail()V

    .line 430
    goto :goto_0

    .line 423
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->removeFromWindow(I)V

    .line 424
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mAttachPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showClearAppDialog(ILjava/lang/String;)V

    .line 425
    nop

    .line 435
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 225
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onDetachedFromWindow()V

    .line 226
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->unregisterSoundCallback()V

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->unRegisterScreenBrightness()V

    .line 228
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->removeVCUEventListener()V

    .line 229
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDeviceStatusListener:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->unregisterListener(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager$DeviceStatusListener;)V

    .line 230
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onFinishInflate()V

    .line 152
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setOnSlideChangeListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setMin(I)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setMax(I)V

    .line 157
    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setOnSlideChangeListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setMin(I)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setMax(I)V

    .line 162
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setOnSlideChangeListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout$OnSlideChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getMinTemperature()I

    move-result v0

    .line 166
    .local v0, "minTemperature":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->getMaxTemperature()I

    move-result v2

    .line 167
    .local v2, "maxTemperature":I
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    mul-int/lit8 v4, v0, 0xa

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setMin(I)V

    .line 168
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    mul-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setMax(I)V

    .line 169
    const v3, 0x7f090154

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mCurrentTemperature:Landroid/widget/TextView;

    .line 171
    const v3, 0x7f09004d

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mClearDataView:Lcom/xiaopeng/xui/widget/XButton;

    .line 172
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mClearDataView:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, p0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mClearDataView:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 174
    const v3, 0x7f0900ce

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadView:Landroid/view/View;

    .line 175
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadView:Landroid/view/View;

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/Global;->isGameModeEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const v1, 0x7f09014e

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {}, Lcom/xiaopeng/app/xpPackageInfo;->isXpGameModeEnable()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mEnableGamePadSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    const v1, 0x7f090053

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mGameDoubtBtn:Landroid/widget/ImageButton;

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mGameDoubtBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mUserControlQsListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mUserControlQsListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;->onUserControlQS(I)V

    .line 291
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;I)V
    .locals 5
    .param p1, "qcSliderLayout"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;
    .param p2, "progress"    # I

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_0

    .line 235
    const-string v0, "QsPanel"

    const-string v1, "mSoundSlideLayout"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundManager:Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->setStreamVolume(III)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_1

    .line 238
    const-string v0, "QsPanel"

    const-string v1, "mBrightnessSlideLayout"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mXpDisplayManager:Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/brightness/XpDisplayManager;->getRealBrightnessByUI(I)I

    move-result v0

    .line 240
    .local v0, "value":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDataRepository:Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/brightness/DataRepository;->setScreenBrightness(Landroid/content/Context;IZI)V

    .line 241
    .end local v0    # "value":I
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mCurrentTemperature:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getTemperature(I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;)V
    .locals 1
    .param p1, "qcSliderLayout"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->unregisterSoundCallback()V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->unRegisterScreenBrightness()V

    .line 253
    :cond_1
    :goto_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;)V
    .locals 2
    .param p1, "qcSliderLayout"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mTemperatureManager:Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/TemperatureManager;->setProgress(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->registerSoundCallback()V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mBrightnessSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-ne p1, v0, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->registerScreenBrightness()V

    .line 264
    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeChanged(III)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "preVolume"    # I

    .line 268
    const-string v0, "QsPanel"

    const-string v1, "onVolumeChanged"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundStreamType:I

    if-ne p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mSoundSlideLayout:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QcSliderLayout;->setProgress(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public removeFromWindow(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mDisplayId:I

    if-ne v0, p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setUserControlQSListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

    .line 283
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->mUserControlQsListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$UserControlQsListener;

    .line 284
    return-void
.end method
