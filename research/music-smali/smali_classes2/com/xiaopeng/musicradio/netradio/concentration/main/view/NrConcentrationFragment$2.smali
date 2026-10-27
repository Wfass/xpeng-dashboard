.class Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$2;
.super Ljava/lang/Object;
.source "NrConcentrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$600(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$2;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$700(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/presenter/NrConcentrationPresenter;->c()V

    :cond_0
    return-void
.end method
