.class Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$5;
.super Ljava/lang/Object;
.source "PlayerMusicTagsLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->showSongQualityChooseDialog()V
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

    .line 280
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$5;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout$5;->a:Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;->access$202(Lcom/xiaopeng/musicradio/music/player/view/PlayerMusicTagsLayout;Lbjm;)Lbjm;

    return-void
.end method
