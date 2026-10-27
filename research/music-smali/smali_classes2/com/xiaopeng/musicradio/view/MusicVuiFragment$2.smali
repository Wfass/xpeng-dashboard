.class Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;
.super Ljava/lang/Object;
.source "MusicVuiFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/view/MusicVuiFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged fromView: is13 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " is23: = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isFront = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " AreaType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " checkScreenChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState.isIs13 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 104
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState.isIs23 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState.isIsFront = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 105
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setScreen()V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->reviewOnScreenChange()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setScreen()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;->a:Lcom/xiaopeng/musicradio/view/MusicVuiFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->layoutChanged()V

    return-void
.end method
