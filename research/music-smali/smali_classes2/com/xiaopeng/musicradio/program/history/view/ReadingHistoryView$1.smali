.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;
.super Ljava/lang/Object;
.source "ReadingHistoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setView()V
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

    .line 365
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 368
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2600(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2700(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$g;->management:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2800(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->c()V

    .line 371
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->setMode(I)V

    .line 372
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Z)V

    .line 373
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Z)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$1;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
