.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;
.super Ljava/lang/Object;
.source "RdDetailFragment.java"

# interfaces
.implements Lbdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;Ljava/util/List;I)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;->c:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;->a:Ljava/util/List;

    iput p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "RdDetailFragment"

    const-string v1, "onLoginFail: "

    .line 607
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 602
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;->c:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;->a:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d(Ljava/util/List;I)V

    return-void
.end method
