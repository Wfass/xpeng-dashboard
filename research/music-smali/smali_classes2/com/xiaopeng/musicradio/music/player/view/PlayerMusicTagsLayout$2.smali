.class Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$2;
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

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$2;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    invoke-static {p1, v0}, Lbrt;->a(Landroid/content/Context;I)V

    .line 137
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->s()I

    move-result p1

    invoke-static {p1}, Lblk;->f(I)V

    :cond_0
    return-void
.end method
