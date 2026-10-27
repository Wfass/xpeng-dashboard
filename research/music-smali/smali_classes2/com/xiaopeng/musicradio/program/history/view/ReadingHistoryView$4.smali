.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;
.super Ljava/lang/Object;
.source "ReadingHistoryView.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    .line 528
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setMode(I)V

    .line 529
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 530
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$3100(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->d()V

    .line 531
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$4;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->restore()V

    .line 532
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    return-void
.end method
