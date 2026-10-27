.class Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;
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

.field final synthetic b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

.field final synthetic c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;ILcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->a:I

    iput-object p3, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->f(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->g(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->a:I

    if-le p1, v0, :cond_2

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->b:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$a;->k:Lcom/xiaopeng/xui/widget/XCheckBox;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XCheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1600(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->h(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->b(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1800(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->i(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    .line 273
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$900(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;Z)V

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1200(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->title_music_select_template:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object v4, v4, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$2000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/program/history/presenter/MultiDeleteHistoryPresenter;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a$2;->c:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView$a;->a:Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;->access$1000(Lcom/xiaopeng/musicradio/program/history/view/ReadingHistoryView;)V

    :cond_2
    return-void
.end method
