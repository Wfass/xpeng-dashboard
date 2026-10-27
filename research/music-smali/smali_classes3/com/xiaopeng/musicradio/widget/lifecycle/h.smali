.class public Lcom/xiaopeng/musicradio/widget/lifecycle/h;
.super Lme/yokeyword/fragmentation/SupportFragmentDelegate;
.source "MusicSupportFragmentDelegate.java"


# instance fields
.field private i:Lme/yokeyword/fragmentation/helper/internal/a;


# direct methods
.method public constructor <init>(Lme/yokeyword/fragmentation/d;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;-><init>(Lme/yokeyword/fragmentation/d;)V

    return-void
.end method


# virtual methods
.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(IZI)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p2, :cond_0

    .line 35
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/h;->i:Lme/yokeyword/fragmentation/helper/internal/a;

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Lme/yokeyword/fragmentation/helper/internal/a;->a()Landroid/view/animation/Animation;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/h;->i:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p2, p2, Lme/yokeyword/fragmentation/helper/internal/a;->d:Landroid/view/animation/Animation;

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/h;->i:Lme/yokeyword/fragmentation/helper/internal/a;

    iget-object p2, p2, Lme/yokeyword/fragmentation/helper/internal/a;->b:Landroid/view/animation/Animation;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lme/yokeyword/fragmentation/SupportFragmentDelegate;->a(Landroid/os/Bundle;)V

    const-string p1, "mAnimHelper"

    .line 28
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/yokeyword/fragmentation/helper/internal/a;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/h;->i:Lme/yokeyword/fragmentation/helper/internal/a;

    return-void
.end method
