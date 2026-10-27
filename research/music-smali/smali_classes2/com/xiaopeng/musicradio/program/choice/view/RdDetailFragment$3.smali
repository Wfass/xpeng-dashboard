.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;
.super Ljava/lang/Object;
.source "RdDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .line 551
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lblz;

    move-result-object p1

    invoke-virtual {p1, p2}, Lblz;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1802(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)Z

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)V

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(I)V

    .line 558
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->h()V

    .line 560
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    .line 561
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)V

    :cond_0
    return-void
.end method
