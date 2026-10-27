.class Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;
.super Ljava/lang/Object;
.source "XOSSmallPlayerLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XOSSmallPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-nez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;->onStop(Landroidx/lifecycle/n;)V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;->onResume(Landroidx/lifecycle/n;)V

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$2;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$400(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 145
    invoke-static {}, Lblk;->i()V

    :goto_0
    return-void
.end method
