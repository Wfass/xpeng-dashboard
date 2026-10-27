.class Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "NrLocationRadioLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$002(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)I

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsLocalPlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mOnlyScroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$200(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrLocationRadioLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$300(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;I)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$400(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$200(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$500(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;Z)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$202(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;Z)Z

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$600(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;->access$700(Lcom/xiaopeng/musicradio/netradio/concentration/localradio/view/NrLocationRadioLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/concentration/localradio/presenter/NrLocationRadioPresenter;->f()V

    return-void
.end method
