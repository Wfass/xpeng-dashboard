.class public Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "ReadingHistoryView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/history/view/a;
.implements Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/program/history/view/a;",
        "Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/history/view/a;",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout$a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadingHistoryDialog"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

.field private mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mEditable:Z

.field private mIDialogView:Lcom/xiaopeng/musicradio/widget/lifecycle/c;

.field private mIsFirstApllyTheme:Z

.field private mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mIsFirstApllyTheme:Z

    const/4 p1, 0x0

    .line 406
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mEditable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mIsFirstApllyTheme:Z

    const/4 p1, 0x0

    .line 406
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mEditable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setDeleteClickable()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mEditable:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$3000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mSceneId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setEditBarEnabled(Z)V

    return-void
.end method

.method private setDeleteClickable()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setClickable(Z)V

    .line 429
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    return-void
.end method

.method private setEditBarEnabled(Z)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    return-void
.end method

.method private setManagerVisible()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->getItemCount()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setMode(I)V

    return-void

    .line 519
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 521
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 522
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 523
    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->delete_program_title:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->delete_program_message:I

    .line 524
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 525
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->delete:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;-><init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 535
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$3;-><init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 543
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->createPresenter()Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;
    .locals 1

    .line 313
    new-instance v0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 330
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->dialog_top_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 331
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rv_reading_history:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    .line 332
    new-instance v0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;-><init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 325
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->dialog_reading_history:I

    return v0
.end method

.method public getDialogTopLayout()Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    return-object v0
.end method

.method public initVui(Ljava/lang/String;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 319
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->notifyDataSetChanged()V

    return-void
.end method

.method public refreshAllItems()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->notifyDataSetChanged()V

    .line 484
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->reading_last_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setManagerVisible()V

    return-void
.end method

.method public refreshItem(I)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->notifyItemChanged(I)V

    return-void
.end method

.method public refreshList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getOrderNum()I

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getOrderNum()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 454
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->enableVuiInvisibleFeature(II)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Ljava/util/List;)V

    .line 457
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 458
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->c()V

    .line 459
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setEditBarEnabled(Z)V

    .line 460
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->title_music_select_template:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v4, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 462
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setManagerVisible()V

    return-void
.end method

.method public restore()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->b()Z

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 468
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 470
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setEditBarEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->c()V

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->reading_last_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public setIDialogView(Lcom/xiaopeng/musicradio/widget/lifecycle/c;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mIDialogView:Lcom/xiaopeng/musicradio/widget/lifecycle/c;

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMode(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 410
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mEditable:Z

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->delete:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setDeleteClickable()V

    .line 413
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->title_music_select_template:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v4, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setDeleteClickable()V

    goto :goto_0

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->management:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setAlpha(F)V

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XButton;->setClickable(Z)V

    .line 419
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mEditable:Z

    .line 420
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->reading_last_play:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 422
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getSceneId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method protected setView()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setManageBtnVisible(Z)V

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 340
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(II)V

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mAdapter:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/program/b$g;->reading_last_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->c()V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 363
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->btn_management:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v2, Lcom/xiaopeng/musicradio/program/b$d;->back:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mBackLayout:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v2, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;-><init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mManageBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v2, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$2;-><init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->at(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mSceneId:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mSceneId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->enableVuiInvisibleFeature(I)V

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mDialogTopLayout:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mSceneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setSceneId(Ljava/lang/String;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 491
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    :cond_0
    return-void
.end method
