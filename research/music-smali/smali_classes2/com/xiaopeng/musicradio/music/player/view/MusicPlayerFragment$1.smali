.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment$1;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->s()I

    move-result p1

    invoke-static {p1}, Lblk;->a(I)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;->access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayerPresenter;->h()V

    return-void
.end method
