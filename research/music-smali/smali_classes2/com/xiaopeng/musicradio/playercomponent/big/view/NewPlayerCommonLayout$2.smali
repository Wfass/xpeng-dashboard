.class Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;
.super Ljava/lang/Object;
.source "NewPlayerCommonLayout.java"

# interfaces
.implements Lcjb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcjb;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 355
    iget-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-virtual {p1}, Lcjb;->getMax()I

    move-result p1

    invoke-static {p3, p2, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$500(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;II)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcjb;)V
    .locals 1

    const-string p1, "NewPlayerCommonLayout"

    const-string v0, "onStartTrackingTouch: ======"

    .line 361
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$602(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Lcjb;)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$700(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    invoke-virtual {p1}, Lcjb;->getProgress()I

    move-result v1

    invoke-virtual {p1}, Lcjb;->getMax()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;->a(II)V

    .line 368
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$602(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;Z)Z

    .line 369
    invoke-static {}, Lblk;->w()V

    const-string p1, "NewPlayerCommonLayout"

    const-string v0, "onStopTrackingTouch: ======"

    .line 370
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
