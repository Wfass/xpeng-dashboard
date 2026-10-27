.class Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment$1;
.super Ljava/lang/Object;
.source "SearchHomeMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment$1;->a:Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment$1;->a:Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;->access$000(Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/HomeMainSearchFragmentPresenter;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnz;->a(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbnz;->b(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lbnw$d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbnw$d;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 59
    new-instance p1, Lbnw$c;

    invoke-direct {p1}, Lbnw$c;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
