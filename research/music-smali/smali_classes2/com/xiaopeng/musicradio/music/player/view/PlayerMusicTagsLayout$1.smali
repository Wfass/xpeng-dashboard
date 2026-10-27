.class Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$1;
.super Ljava/lang/Object;
.source "PlayerMusicTagsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    .line 125
    invoke-static {}, Laye;->a()Laye;

    move-result-object p1

    invoke-virtual {p1}, Laye;->c()V

    .line 126
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->s()I

    move-result p1

    invoke-static {p1}, Lblk;->b(I)V

    :cond_0
    return-void
.end method
