.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;
.super Ljava/lang/Object;
.source "ReadingHistoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;I)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 285
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->j(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->k(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->a:I

    if-le p1, v0, :cond_0

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2400(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->l(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$3;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->c(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    :cond_0
    return-void
.end method
