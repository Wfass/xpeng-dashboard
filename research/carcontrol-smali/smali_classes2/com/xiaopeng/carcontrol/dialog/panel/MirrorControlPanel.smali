.class public Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "MirrorControlPanel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/direct/IPanelDirectDispatch;


# instance fields
.field private adjustLayout:Landroid/view/View;

.field btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

.field private foldBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

.field private imsAutoParkLayout:Landroid/view/ViewGroup;

.field private imsEnableLayout:Landroid/view/ViewGroup;

.field private imsHighSpeedLayout:Landroid/view/ViewGroup;

.field private leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mExteriorMirrorStub:Landroid/view/ViewStub;

.field private mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

.field private mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mImsStub:Landroid/view/ViewStub;

.field private mLeftSwGroup:Landroid/view/ViewGroup;

.field private mMirrorImgBg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mRightSwGroup:Landroid/view/ViewGroup;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field private mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mUtteranceId:Ljava/lang/String;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mirrorAutoFoldLayout:Landroid/view/ViewGroup;

.field private mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private tabIndex:I

.field private unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorImgBg:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Landroid/view/ViewStub;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mExteriorMirrorStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Landroid/view/ViewStub;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->updateMirrorFoldState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V

    return-void
.end method

.method private initExteriorMirrorView()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mExteriorMirrorStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f0a014b

    .line 207
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mExteriorMirrorStub:Landroid/view/ViewStub;

    .line 208
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f0a0098

    .line 210
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorImgBg:Lcom/xiaopeng/xui/widget/XImageView;

    const v1, 0x7f080283

    .line 211
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    const v0, 0x7f0a0161

    .line 212
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a039c

    .line 213
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00ae

    .line 214
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const v2, 0x7f0a0160

    .line 215
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v2, 0x7f0a039b

    .line 216
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v2, 0x7f0a006f

    .line 217
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->adjustLayout:Landroid/view/View;

    const-string v2, "isSupportMirrorFold"

    .line 219
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const-string v2, "isSupportFramelessMirror"

    .line 220
    invoke-static {v2}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    .line 222
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->initFoldStatefulButton()V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    .line 228
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    const v0, 0x7f0a0162

    .line 232
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 234
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    const v0, 0x7f0a039d

    .line 236
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$QJMTSmw0KDvOplPtsnDXwQYoEk8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$QJMTSmw0KDvOplPtsnDXwQYoEk8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$PscXlIpwOe6r-cBOucgnmvnu3PA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$PscXlIpwOe6r-cBOucgnmvnu3PA;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a01d1

    .line 267
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    const v0, 0x7f0a01d2

    .line 268
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mLeftSwGroup:Landroid/view/ViewGroup;

    const-string v0, "isSupportMirrorMemory"

    .line 269
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mLeftSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a02b5

    .line 275
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    const v0, 0x7f0a02b7

    .line 276
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mRightSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 278
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    .line 282
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$EKV9V6gQZ8w_6eJDKM3PBGqXVPE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$EKV9V6gQZ8w_6eJDKM3PBGqXVPE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$Oi9dHFQ9MGfOAQyd0rxbzHYcyP0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$Oi9dHFQ9MGfOAQyd0rxbzHYcyP0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->adjustLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->adjustLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mLeftSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 299
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    :goto_4
    const v0, 0x7f0a0084

    .line 304
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0239

    .line 305
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->isMirrorAutoFoldEnable()Z

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init MirrorAutoFoldState, mirrorAutoFoldEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$wk1LZ1-aQe1wwLDjnxe131o_UKw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$wk1LZ1-aQe1wwLDjnxe131o_UKw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorAutoFoldEnable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$5eSbU3By7CjSNKDyxtMhbRAmZxU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$5eSbU3By7CjSNKDyxtMhbRAmZxU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initFoldStatefulButton()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldOutputState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    move-result-object v1

    .line 326
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->updateMirrorFoldState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    new-instance v1, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-direct {v1, v2}, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initImsView()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f0a01af

    .line 365
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsStub:Landroid/view/ViewStub;

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a01ac

    .line 369
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 370
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiPriority(Lcom/xiaopeng/vui/commons/VuiPriority;)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$_Rukq7UpAWrtlNZ6-Z46k4XJjZU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$_Rukq7UpAWrtlNZ6-Z46k4XJjZU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    const v0, 0x7f0a01a8

    .line 382
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->imsEnableLayout:Landroid/view/ViewGroup;

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$zxupWkIM0bhBKaWQuhZlkNZaAM4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$zxupWkIM0bhBKaWQuhZlkNZaAM4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a01aa

    .line 389
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->imsHighSpeedLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a01a9

    .line 390
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 391
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsHighSpeedAutoVisionSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$JizsikQNZQnyDCM8CJ0_Lxe5yU4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$JizsikQNZQnyDCM8CJ0_Lxe5yU4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$66R9SrTKKi9Q_CbsijJ4a6fkKmA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$66R9SrTKKi9Q_CbsijJ4a6fkKmA;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a01ad

    .line 408
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->imsAutoParkLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a01ae

    .line 409
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 410
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$zWkodgouuM_iYUjvelsxcP9wk2Y;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$zWkodgouuM_iYUjvelsxcP9wk2Y;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$v73raPlZfDZp777HeWSE5IE5-p0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$v73raPlZfDZp777HeWSE5IE5-p0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsAutoVisionSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    const v0, 0x7f0a01a7

    .line 429
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    const v1, 0x7f0a018e

    .line 430
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    .line 431
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevel()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$3;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    return-void
.end method

.method private updateMirrorFoldState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mirrorFoldState",
            "mirrorFoldOutputState"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMirrorFoldState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getDoingLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0424

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 343
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Folding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 345
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    const-string/jumbo p1, "\u6298\u53e0\u4e2d"

    .line 346
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 347
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Unfolding:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    if-ne p2, v1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setDoing()I

    .line 349
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    const-string/jumbo p1, "\u5c55\u5f00\u4e2d"

    .line 350
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 351
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;->Stopped:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    if-ne p2, v0, :cond_3

    .line 352
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-ne p1, p2, :cond_2

    .line 353
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setOpen()I

    goto :goto_0

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setClose()I

    .line 357
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchDirectData(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mDirectIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mDirectIntent:Landroid/content/Intent;

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mDirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d003b

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f0701c4

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f0701c5

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "MirrorControlSysDialog"

    return-object v0
.end method

.method public synthetic lambda$initExteriorMirrorView$1$MirrorControlPanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const v0, 0x7f11023c

    .line 240
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->vuiFeedback(ILandroid/view/View;)V

    .line 242
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_fold:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$2$MirrorControlPanel(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 250
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_fold:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$3$MirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 283
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 284
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_reverse_auto_tilt_left_sw:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setLMReverseSw(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$4$MirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 289
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->rear_mirror_control_reverse_auto_tilt_right_sw:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setRMReverseSw(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$5$MirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 311
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setMirrorAutoFoldEnable(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$6$MirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initImsView$10$MirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 403
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 404
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_hight_speed_auto_vision_sw:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsHighSpeedAutoVisionSw(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initImsView$11$MirrorControlPanel(Landroid/view/View;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "b"
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 413
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110172

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->vuiFeedbackClick(ILandroid/view/View;)V

    return p2

    :cond_1
    return v0
.end method

.method public synthetic lambda$initImsView$12$MirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 422
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 423
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_reverse_auto_vision_sw:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsAutoVisionSw(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initImsView$7$MirrorControlPanel(Landroid/view/View;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsSystemSt()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 375
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f110178

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 376
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->vuiFeedbackClick(ILandroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public synthetic lambda$initImsView$8$MirrorControlPanel(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "v",
            "isChecked"
        }
    .end annotation

    .line 384
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 385
    :cond_0
    sget-object p1, Lcom/xiaopeng/track/constant/BID;->steam_rear_mirror_control_sw:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {p1}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsMode(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initImsView$9$MirrorControlPanel(Landroid/view/View;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "b"
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 395
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const v0, 0x7f110172

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->vuiFeedbackClick(ILandroid/view/View;)V

    return p2

    :cond_1
    return v0
.end method

.method public synthetic lambda$onInitView$0$MirrorControlPanel(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$13$MirrorControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panel is not shown, onRegisterLiveData: accForMirrorData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 503
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_1

    const p1, 0x7f110024

    .line 504
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->dismiss()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$14$MirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isActive"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panel is not shown, onRegisterLiveData: cruiseData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f110025

    .line 518
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 519
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->dismiss()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$15$MirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isReversingCar"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 527
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$16$MirrorControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mirrorReverseMode"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReverseChanged: reverseMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLMReverseSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 536
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRMReverseSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$17$MirrorControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 560
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 564
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 565
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$18$MirrorControlPanel(Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 574
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 575
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    if-eqz p1, :cond_1

    .line 577
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsHighSpeedAutoVisionSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 578
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsAutoVisionSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 579
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    .line 580
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevel()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_1

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 583
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 584
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$19$MirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "auto"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$20$MirrorControlPanel(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "auto"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onRegisterLiveData$21$MirrorControlPanel(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    :cond_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDismiss()V
    .locals 2

    .line 671
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onDismiss()V

    .line 672
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->exitScene()V

    .line 673
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDistractionSwitch(Z)V

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mUtteranceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mUtteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mUtteranceId:Ljava/lang/String;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->cancelAllControlMirror()V

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v1, "key_mirror"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method

.method protected onInitView()V
    .locals 5

    const v0, 0x7f0a00e4

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    .line 153
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$7PKhTj0dTaTzNd8FdAH1w4icsW8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$7PKhTj0dTaTzNd8FdAH1w4icsW8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "generalAct"

    const-string v3, "System.Close"

    .line 157
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 159
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    const v0, 0x7f0a0360

    .line 162
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0336

    .line 163
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->initExteriorMirrorView()V

    const-string v0, "isSupportIms"

    .line 165
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->initImsView()V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v3, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$1;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitView, tabIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorImgBg:Lcom/xiaopeng/xui/widget/XImageView;

    iget v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mExteriorMirrorStub:Landroid/view/ViewStub;

    iget v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    if-eq v3, v4, :cond_1

    move v3, v2

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsStub:Landroid/view/ViewStub;

    iget v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    if-ne v3, v4, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_3

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 109
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 110
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method protected onInterceptShow()Z
    .locals 5

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onInterceptShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccStateForMirror()Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept accState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f110024

    .line 120
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    return v3

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIntercept CruiseState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isCruiseActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110025

    .line 129
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    return v3

    :cond_1
    return v1
.end method

.method protected onKey(ILandroid/view/KeyEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "ev"
        }
    .end annotation

    .line 684
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const-string v0, "isSupportIms"

    .line 685
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3f7

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0x7530

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getSelectedTabPosition()I

    move-result v0

    if-ne v0, v5, :cond_2

    if-nez p2, :cond_0

    .line 687
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V

    .line 688
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKeyIms(II)Z

    move-result p1

    return p1

    :cond_0
    if-ne v5, p2, :cond_5

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKeyIms(II)Z

    move-result p1

    return p1

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->dismiss()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 702
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mControlPanel:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1

    :cond_3
    if-ne v5, p2, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    move-result p1

    return p1

    .line 709
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->dismiss()V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onRefresh()V
    .locals 5

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isSupportMirrorMemory"

    .line 456
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLMReverseSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 458
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRMReverseSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->isMirrorAutoFoldEnable()Z

    move-result v0

    .line 461
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init MirrorAutoFoldState, mirrorAutoFoldEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 462
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    const-string v0, "isSupportIms"

    .line 464
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 465
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorImgBg:Lcom/xiaopeng/xui/widget/XImageView;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    const/16 v4, 0x8

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mExteriorMirrorStub:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsStub:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->tabIndex:I

    if-ne v1, v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsMode()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v3

    .line 470
    :goto_2
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    if-eqz v0, :cond_5

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsHighSpeedAutoVisionSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsAutoVisionSw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevel()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->setSelection(I)V

    goto :goto_3

    .line 477
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsBrightnessTab:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSegmented;->setEnabled(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccForMirrorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$xKfcQuMjOig0BYRqQ_cB9066jWg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$xKfcQuMjOig0BYRqQ_cB9066jWg;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCruiseData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$-v4RTztsIT6m2Tn-GFtWbYKhO5k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$-v4RTztsIT6m2Tn-GFtWbYKhO5k;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getScuOperationTipsData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$R4VyNo0P_xTxfoOAAPrZuwgPVIM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$R4VyNo0P_xTxfoOAAPrZuwgPVIM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportMirrorFold"

    .line 531
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorReverseData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$bcoAFyaDHw-9w08ys1tm_VuZxIw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$bcoAFyaDHw-9w08ys1tm_VuZxIw;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportFramelessMirror"

    .line 539
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$4;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorOutputData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$5;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$9FBa2ETi5mIMJGfsE9fJPMJn6nY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$9FBa2ETi5mIMJGfsE9fJPMJn6nY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_1
    :goto_0
    const-string v0, "isSupportIms"

    .line 571
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$Rv-2IvQ2eo1gSLKE4Iu3FnDPark;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$Rv-2IvQ2eo1gSLKE4Iu3FnDPark;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsHighSpeedAutoVisionSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$in__D7HyETkKQn_4Du6u8SsUMzQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$in__D7HyETkKQn_4Du6u8SsUMzQ;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsAutoVisionSwData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$dAewBP202dKDTq47B6ZTACM5OyY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$dAewBP202dKDTq47B6ZTACM5OyY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 605
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getImsBrightLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$pPvFJese_KFQoFXwQZGln8Z7buE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$pPvFJese_KFQoFXwQZGln8Z7buE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v1, "key_mirror"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method protected onShow()V
    .locals 3

    .line 620
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onShow()V

    .line 621
    sget-object v0, Lcom/xiaopeng/track/constant/PID;->pid_smartcontrol_drive_rear_mirror_control:Lcom/xiaopeng/track/constant/PID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/PID;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/track/BIHelper;->expose(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->enterScene()V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDistractionSwitch(Z)V

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mLeftSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 625
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mRightSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 628
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 631
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->imsEnableLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 634
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mImsModeSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->imsHighSpeedLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 637
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mHighSpeedAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->imsAutoParkLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 640
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mParkAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_5
    const-string v0, "isSupportMirrorFold"

    .line 650
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "isSupportFramelessMirror"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 651
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 652
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_7

    .line 653
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 655
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_8

    .line 656
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    :cond_8
    if-eqz v1, :cond_a

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    if-eqz v0, :cond_9

    .line 660
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 662
    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    if-eqz v0, :cond_a

    .line 663
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :cond_a
    return-void
.end method
