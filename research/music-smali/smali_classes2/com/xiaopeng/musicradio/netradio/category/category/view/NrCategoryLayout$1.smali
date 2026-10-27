.class Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$1;
.super Ljava/lang/Object;
.source "NrCategoryLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->access$000(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->c()V

    return-void
.end method
