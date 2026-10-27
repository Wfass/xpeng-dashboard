.class public Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "SeatBaseFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final SEAT_POSITION_ONE:I = 0x0

.field protected static final SEAT_POSITION_THREE:I = 0x2

.field protected static final SEAT_POSITION_TWO:I = 0x1


# instance fields
.field protected final SEAT_CHAIR:I

.field protected final SEAT_CUSHION:I

.field protected final SEAT_HEADREST:I

.field protected final SEAT_LUMBAR:I

.field protected final SEAT_MID_HEADREST:I

.field protected context:Landroid/content/Context;

.field protected dialog:Lcom/xiaopeng/xui/app/XDialog;

.field protected groupName:Ljava/lang/String;

.field protected isStowSuccess:Z

.field protected mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field protected mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

.field protected mBtnSeatRestoreCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

.field protected mCustomDialogView:Landroid/view/View;

.field protected final mLeftPartList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mMainHandler:Landroid/os/Handler;

.field protected mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

.field protected mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

.field protected mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

.field protected mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

.field protected mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field protected mSelectPosId:I

.field protected mShowBtnHandler:Landroid/os/Handler;

.field protected final mShowBtnRunnable:Ljava/lang/Runnable;

.field public mTag:Ljava/lang/String;

.field protected mTip:Lcom/xiaopeng/xui/widget/XTextView;

.field private updateVuiBySelf:I

.field protected xRadioGroup:Lcom/xiaopeng/xui/widget/XRadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mLeftPartList:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->SEAT_CHAIR:I

    const/4 v0, 0x2

    .line 67
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->SEAT_LUMBAR:I

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->SEAT_CUSHION:I

    const/4 v0, 0x3

    .line 69
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->SEAT_HEADREST:I

    const/4 v0, 0x4

    .line 70
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->SEAT_MID_HEADREST:I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mMainHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$aeXqR5cMG7WzLKKn0M_6wETALn8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$aeXqR5cMG7WzLKKn0M_6wETALn8;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateVuiBySelf:I

    return-void
.end method


# virtual methods
.method protected compareSeatPosition()V
    .locals 0

    return-void
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected getRootLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hiddenMemoryRestoreBtn()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mBtnSeatRestoreCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method protected initViewModels()V
    .locals 2

    .line 115
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->initViewModels()V

    .line 116
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 117
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

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

    .line 102
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->context:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mTag:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onResume()V

    .line 90
    iget v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateVuiBySelf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->updateVuiBySelf:I

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->initVuiScene()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    .line 140
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a02f7

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    const p2, 0x7f0a00be

    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mBtnSeatMemoryCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const p2, 0x7f0a00c2

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XButton;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mBtnSeatRestoreCurrentPos:Lcom/xiaopeng/xui/widget/XButton;

    const p2, 0x7f0a00bd

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mTip:Lcom/xiaopeng/xui/widget/XTextView;

    .line 152
    new-instance p1, Lcom/xiaopeng/xui/app/XDialog;

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->context:Landroid/content/Context;

    const v0, 0x7f120367

    invoke-direct {p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->dialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object p2

    const v0, 0x7f0d0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mCustomDialogView:Landroid/view/View;

    const p2, 0x7f0a02a5

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRadioGroup;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->xRadioGroup:Lcom/xiaopeng/xui/widget/XRadioGroup;

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mCustomDialogView:Landroid/view/View;

    const p2, 0x7f0a00bf

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRadioButton;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mCustomDialogView:Landroid/view/View;

    const p2, 0x7f0a00c0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRadioButton;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mCustomDialogView:Landroid/view/View;

    const p2, 0x7f0a00c1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRadioButton;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mPos1Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mPos2Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mPos3Btn:Lcom/xiaopeng/xui/widget/XRadioButton;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$3;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mSeatLeftPart:Lcom/xiaopeng/xui/widget/XSegmented;

    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$4;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment$4;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSegmented;->setSegmentListener(Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;)V

    return-void
.end method

.method protected declared-synchronized showBtnHandle()V
    .locals 4

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnHandler:Landroid/os/Handler;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->mShowBtnRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startEffect(Lcom/xiaopeng/xui/widget/XImageView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageView",
            "drawableId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 207
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;)V

    .line 208
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->with(Landroid/widget/ImageView;)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p2}, Landroid/support/rastermill/FrameSequenceController;->resourceId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 210
    invoke-virtual {p1, v0}, Landroid/support/rastermill/FrameSequenceController;->decodingThreadId(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    const/4 p2, 0x2

    .line 211
    invoke-virtual {p1, p2}, Landroid/support/rastermill/FrameSequenceController;->loopBehavior(I)Landroid/support/rastermill/FrameSequenceController;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequenceController;->apply()Landroid/support/rastermill/FrameSequenceDrawable;

    return-void
.end method

.method protected stopEffect(Lcom/xiaopeng/xui/widget/XImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    const/16 v0, 0x8

    .line 216
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 217
    invoke-static {p1}, Landroid/support/rastermill/FrameSequenceUtil;->destroy(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected updateSeatPartTab(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "part"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatBaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "part = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
