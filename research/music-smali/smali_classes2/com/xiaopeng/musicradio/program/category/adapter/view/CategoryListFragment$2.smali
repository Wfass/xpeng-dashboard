.class Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$2;
.super Ljava/lang/Object;
.source "CategoryListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$2;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment$2;->a:Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;->access$100(Lcom/xiaopeng/musicradio/program/category/adapter/view/CategoryListFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->c()V

    return-void
.end method
