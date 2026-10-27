.class Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$1;
.super Ljava/lang/Object;
.source "QQMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setMusicMainView()V
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

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Lbjl;->m(I)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Lbjl;->k(I)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Lbjl;->a(I)V

    .line 205
    :cond_3
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-static {v0}, Lbjl;->j(I)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->handleCloseSearch()V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    return-void
.end method
