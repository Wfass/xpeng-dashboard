.class Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$3;
.super Ljava/lang/Object;
.source "PlayerMusicTagsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->showQualityGuide()V
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

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->access$000(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)V

    .line 245
    invoke-static {}, Laye;->a()Laye;

    move-result-object p1

    invoke-virtual {p1}, Laye;->c()V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->access$100(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;)Lbhl;

    move-result-object p1

    invoke-virtual {p1}, Lbhl;->dismiss()V

    return-void
.end method
