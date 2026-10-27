.class public Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "MirrorControlFragment.java"


# instance fields
.field private foldBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

.field private leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mExteriorMirrorStub:Landroid/view/ViewStub;

.field private mImsStub:Landroid/view/ViewStub;

.field private mLeftSwGroup:Landroid/view/ViewGroup;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field protected mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

.field private mRightSwGroup:Landroid/view/ViewGroup;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field private mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mUtteranceId:Ljava/lang/String;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

.field private unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    .line 456
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Landroid/view/ViewStub;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mExteriorMirrorStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Landroid/view/ViewStub;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mImsStub:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    return-object p0
.end method

.method private initExteriorMirrorView(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mExteriorMirrorStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f0a014b

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mExteriorMirrorStub:Landroid/view/ViewStub;

    .line 152
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f0a0237

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    const v1, 0x7f0a0238

    .line 155
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    const v2, 0x7f0a0098

    .line 157
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XImageView;

    const-string v3, "isSupportMirrorFold"

    .line 158
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "isSupportMirrorAutoFoldOff"

    const-string v6, "isSupportMirrorMemory"

    if-nez v4, :cond_2

    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f080284

    goto :goto_1

    :cond_2
    :goto_0
    const v4, 0x7f080283

    :goto_1
    invoke-virtual {v2, v4}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    const v2, 0x7f0a0161

    .line 161
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a039c

    .line 162
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 164
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v4, :cond_4

    .line 170
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const v2, 0x7f0a0160

    .line 172
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 173
    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    const v2, 0x7f0a0162

    .line 174
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 175
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v2, 0x7f0a039b

    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 177
    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    const v2, 0x7f0a039d

    .line 178
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 179
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 180
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$4DkBfYb_UkPkR6i7Yspza-9eUMY;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$4DkBfYb_UkPkR6i7Yspza-9eUMY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$wIcl2Hu2wLmmEcG9KJPs9A24A_Y;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$wIcl2Hu2wLmmEcG9KJPs9A24A_Y;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v8

    .line 196
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 197
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 200
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz v4, :cond_8

    .line 203
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    const v2, 0x7f0a01d1

    .line 206
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    const v3, 0x7f0a01d2

    .line 207
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mLeftSwGroup:Landroid/view/ViewGroup;

    .line 208
    invoke-static {v6}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 209
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 210
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mLeftSwGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9

    .line 212
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 214
    :cond_9
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    :goto_4
    const v2, 0x7f0a02b5

    .line 216
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    const v2, 0x7f0a02b7

    .line 217
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mRightSwGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_a

    .line 219
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 221
    :cond_a
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v2, v8}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    .line 223
    :goto_5
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$a9Zs6zBVamW_32jfaBaP66d81CQ;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$a9Zs6zBVamW_32jfaBaP66d81CQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v3, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$B78S2O0hUkUhbplRjrJZH-Fnus0;

    invoke-direct {v3, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$B78S2O0hUkUhbplRjrJZH-Fnus0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f0a006e

    .line 233
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 235
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLMReverseSw()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 238
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRMReverseSw()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_6

    .line 240
    :cond_b
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 241
    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mLeftSwGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    .line 243
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 245
    :cond_c
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    :goto_6
    const v2, 0x7f0a023a

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XListSingle;

    const v2, 0x7f0a0400

    .line 249
    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XListSingle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 250
    invoke-static {v5}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 252
    invoke-virtual {v1, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 253
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    if-eqz p1, :cond_d

    .line 255
    invoke-virtual {p1, v8}, Lcom/xiaopeng/xui/widget/XListSingle;->setVisibility(I)V

    .line 257
    :cond_d
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz p1, :cond_e

    .line 258
    invoke-virtual {p1, v8}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    .line 260
    :cond_e
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->isMirrorAutoFoldEnable()Z

    move-result p1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init MirrorAutoFoldState, mirrorAutoFoldEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$sPT-RilO9rOJtPWXmYZAmmDHyyo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$sPT-RilO9rOJtPWXmYZAmmDHyyo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorAutoFoldEnable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$OrYUQTXLvttE3i5jvTDC3uT0-I0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$OrYUQTXLvttE3i5jvTDC3uT0-I0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    goto :goto_7

    :cond_f
    if-eqz p1, :cond_10

    .line 275
    invoke-virtual {p1, v7}, Lcom/xiaopeng/xui/widget/XListSingle;->setVisibility(I)V

    .line 277
    :cond_10
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    if-eqz p1, :cond_11

    .line 278
    invoke-virtual {p1, v7}, Lcom/xiaopeng/xui/widget/XSwitch;->setVisibility(I)V

    :cond_11
    :goto_7
    return-void
.end method

.method private initImsView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a00e4

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    .line 98
    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$dCbk0yvi2Ae8NzIBcWZAljA7KAs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$dCbk0yvi2Ae8NzIBcWZAljA7KAs;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "generalAct"

    const-string v3, "System.Close"

    .line 106
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 108
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVuiProps(Lorg/json/JSONObject;)V

    const v0, 0x7f0a0360

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0336

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 114
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->initExteriorMirrorView(Landroid/view/View;)V

    const-string v0, "isSupportIms"

    .line 115
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVisibility(I)V

    .line 118
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->initImsView(Landroid/view/View;)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    goto :goto_1

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTitleTv:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mTablayoutSwitch:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private onChanged(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mAutoVisionSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    return-void
.end method

.method private registerLiveData()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getAccForMirrorData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$OWE1staWvhQggrRNcmrXgXUnS2I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$OWE1staWvhQggrRNcmrXgXUnS2I;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCruiseData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$ZmtQccghjzS-hgi606Ie1TOQEyg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$ZmtQccghjzS-hgi606Ie1TOQEyg;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getScuOperationTipsData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$lhAAzw0tMIMHXynJ7ZJGo9R_KSs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$lhAAzw0tMIMHXynJ7ZJGo9R_KSs;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportMirrorFold"

    .line 394
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorReverseData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$thPLVQSZ0PCGC99ZqDOr-CqNLIY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$thPLVQSZ0PCGC99ZqDOr-CqNLIY;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$zdefE7pasDLu6Ibpnb4w0t0zbJQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$zdefE7pasDLu6Ibpnb4w0t0zbJQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v1, "key_mirror"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method private showImsConfirmDialog()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showImsConfirmDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110175

    .line 340
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110174

    .line 341
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110173

    .line 342
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$R80qZqjVIhGkg0zbJ1A2TXJxisQ;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$R80qZqjVIhGkg0zbJ1A2TXJxisQ;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f1102b6

    .line 348
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$HOdmChHjDuH1TMtQeusMj6EYMb0;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$HOdmChHjDuH1TMtQeusMj6EYMb0;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d003b

    return v0
.end method

.method protected initViewModels()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 85
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$1$MirrorControlFragment(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->isVuiAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const v0, 0x7f11023c

    .line 182
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->vuiFeedback(ILandroid/view/View;)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$2$MirrorControlFragment(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$3$MirrorControlFragment(Landroid/widget/CompoundButton;Z)V
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

    .line 224
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setLMReverseSw(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$4$MirrorControlFragment(Landroid/widget/CompoundButton;Z)V
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

    .line 229
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setRMReverseSw(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$5$MirrorControlFragment(Landroid/widget/CompoundButton;Z)V
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

    .line 264
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setMirrorAutoFoldEnable(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initExteriorMirrorView$6$MirrorControlFragment(Ljava/lang/Boolean;)V
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

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mirrorAutoFoldSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initView$0$MirrorControlFragment(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerLiveData$10$MirrorControlFragment(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isActive"
        }
    .end annotation

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

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

    .line 378
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f110025

    .line 379
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_1

    .line 383
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$registerLiveData$11$MirrorControlFragment(Ljava/lang/Boolean;)V
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

    .line 388
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 389
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_0

    .line 390
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerLiveData$12$MirrorControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mirrorReverseMode"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

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

    .line 398
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getLMReverseSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 399
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getRMReverseSw()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$registerLiveData$13$MirrorControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLoading;->isVisibleToUser()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 409
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->foldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XLoading;->isVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 413
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->unfoldLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$registerLiveData$9$MirrorControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

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

    .line 364
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    if-ne p1, v0, :cond_1

    const p1, 0x7f110024

    .line 365
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_1

    .line 369
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showImsConfirmDialog$7$MirrorControlFragment(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 344
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

    const-string v0, "IMS confirm dialog: confirm"

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsMode(I)V

    .line 346
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showImsConfirmDialog$8$MirrorControlFragment(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 350
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->TAG:Ljava/lang/String;

    const-string v0, "IMS confirm dialog: cancel"

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 72
    instance-of v0, p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 445
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onDestroyView()V

    .line 446
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->exitScene()V

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDistractionSwitch(Z)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mUtteranceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mUtteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->stop(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mUtteranceId:Ljava/lang/String;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->cancelAllControlMirror()V

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    const-string v1, "key_mirror"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 424
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onResume()V

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->enterScene()V

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->setDistractionSwitch(Z)V

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mLeftSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 428
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->leftSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mRightSwGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 431
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->rightSw:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchAreaAsParentSameSize(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    const-string v0, "isSupportMirrorMemory"

    .line 433
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f110233

    .line 434
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f110234

    .line 435
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mUtteranceId:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->initView(Landroid/view/View;)V

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->registerLiveData()V

    return-void
.end method
