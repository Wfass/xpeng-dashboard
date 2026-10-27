.class public Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "ProgramHistoryFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/program/fragment/sub/history"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/program/history/presenter/ProgramHistoryPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mHistoryView:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->mHistoryView:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/history/presenter/ProgramHistoryPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/history/presenter/ProgramHistoryPresenter;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/program/history/presenter/ProgramHistoryPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/ProgramHistoryPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 30
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->history_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->mHistoryView:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 25
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_history_fragment:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 53
    iget v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->at(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Program_SubPage_LastPlay"

    return-object v0
.end method

.method protected setListener()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;->mHistoryView:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getDialogTopLayout()Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/history/view/ProgramHistoryFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method
