.class Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;
.super Ljava/lang/Object;
.source "NrLocationRadioLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->refreshBanner(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$800(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshBanner run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$800(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrLocationRadioLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$202(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;Z)Z

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$1000(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->b:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$900(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/zhpan/bannerview/BannerViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhpan/bannerview/BannerViewPager;->getData()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$4;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->a(Ljava/util/List;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$1100(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)V

    :cond_0
    return-void
.end method
