.class public Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;
.super Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;
.source "FaultDetailFragment.java"


# instance fields
.field private advice:Ljava/lang/String;

.field private btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

.field private businessType:I

.field private code:Ljava/lang/String;

.field private confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private description:Ljava/lang/String;

.field private failedDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private imageUrl:Ljava/lang/String;

.field private image_fault:Lcom/xiaopeng/xui/widget/XImageView;

.field private localFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private occurrenceTime:J

.field private reserveTask:Ljava/lang/Runnable;

.field private reserve_loading:Lcom/xiaopeng/xui/widget/XLoading;

.field private reservedDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

.field private title:Ljava/lang/String;

.field private tv_OccurrenceTime:Lcom/xiaopeng/xui/widget/XTextView;

.field private tv_advice:Lcom/xiaopeng/xui/widget/XTextView;

.field private tv_description:Lcom/xiaopeng/xui/widget/XTextView;

.field private tv_title:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 58
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->failedDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 59
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reservedDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 61
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$1;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserveTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/widget/XLoading;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserve_loading:Lcom/xiaopeng/xui/widget/XLoading;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->failedDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->failedDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reservedDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reservedDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserveTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initData()V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_title:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_OccurrenceTime:Lcom/xiaopeng/xui/widget/XTextView;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->occurrenceTime:J

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->timeStampToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_description:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_advice:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->advice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLastReserveTime()J

    move-result-wide v2

    .line 123
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastReserveTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    .line 124
    div-long v2, v0, v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const v1, 0x7f110128

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f1102c4

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserveTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1b7740

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    :goto_0
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$8dQuJvxoVZTb1dAIqZK8nxepkco;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$8dQuJvxoVZTb1dAIqZK8nxepkco;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f0a0152

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_title:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0151

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_OccurrenceTime:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a014e

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_description:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a014d

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->tv_advice:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a014f

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->image_fault:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f0a00b8

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f0a02ad

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserve_loading:Lcom/xiaopeng/xui/widget/XLoading;

    return-void
.end method

.method private reserve()V
    .locals 3

    .line 147
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12036a

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const v1, 0x7f110388

    .line 148
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setCustomView(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextFields;

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v2, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$ZLsz6BycS2d3RV9367f7kCMYC2k;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$ZLsz6BycS2d3RV9367f7kCMYC2k;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/widget/XTextFields;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private timeStampToString(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getRootLayoutId()I
    .locals 1

    const v0, 0x7f0d0041

    return v0
.end method

.method protected initViewModels()V
    .locals 1

    .line 88
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getViewModel(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    return-void
.end method

.method public synthetic lambda$initData$0$FaultDetailFragment()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->localFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->localFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->localFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->image_fault:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/GlideUtil;->loadWithOriginSize(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->imageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->image_fault:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/GlideUtil;->loadWithOriginSize(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$null$1$FaultDetailFragment(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
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

    .line 160
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserve_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const p2, 0x7f110128

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$null$2$FaultDetailFragment(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserve_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f110128

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$null$3$FaultDetailFragment(Lcom/xiaopeng/xui/widget/XTextFields;Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "input_number",
            "xDialog",
            "i"
        }
    .end annotation

    .line 170
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextFields;->getText()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;

    invoke-direct {p3, p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$2;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)V

    invoke-virtual {p2, p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->reserveRemoteDiagnose(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public synthetic lambda$reserve$4$FaultDetailFragment(Lcom/xiaopeng/xui/widget/XTextFields;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "input_number",
            "v"
        }
    .end annotation

    const p2, 0x7f1102c4

    .line 152
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 153
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1102c5

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 156
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->btn_reserve:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 157
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserve_loading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 159
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const v0, 0x7f11005e

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$_XajwBNBLP5l60cyvSc4QSubmOk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$_XajwBNBLP5l60cyvSc4QSubmOk;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)V

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 165
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$5mRhsZGdpUk2nHdjsUh79BcbXJA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$5mRhsZGdpUk2nHdjsUh79BcbXJA;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 170
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->confirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const v0, 0x7f110061

    new-instance v1, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$MxVgKfm4hEDU_5SAmxTh-Q8fSAo;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$FaultDetailFragment$MxVgKfm4hEDU_5SAmxTh-Q8fSAo;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/widget/XTextFields;)V

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 222
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->selfCheckViewModel:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment$3;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;Lcom/xiaopeng/xui/widget/XTextFields;)V

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getMobilePhone(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "title"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->title:Ljava/lang/String;

    const-string v0, "occurrenceTime"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->occurrenceTime:J

    const-string v0, "description"

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->description:Ljava/lang/String;

    const-string v0, "advice"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->advice:Ljava/lang/String;

    const-string v0, "localFilePath"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->localFilePath:Ljava/lang/String;

    const-string v0, "imageUrl"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->imageUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 253
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserveTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

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

    .line 93
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 94
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->initView(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->initData()V

    .line 97
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/fragment/FaultDetailFragment;->reserve()V

    return-void
.end method
