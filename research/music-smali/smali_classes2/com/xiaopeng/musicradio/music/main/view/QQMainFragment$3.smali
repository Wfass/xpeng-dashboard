.class Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;
.super Ljava/lang/Object;
.source "QQMainFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->initSearchTopBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Landroid/view/View;Z)V

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFocusChange: hasFocus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mPosition = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->access$000(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicMainFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$3;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->openSearch()V

    :cond_0
    return-void
.end method
