.class Lcom/xiaopeng/musicradio/music/player/view/k$2;
.super Ljava/lang/Object;
.source "MusicPlayListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/musicradio/music/player/view/k$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/k$d;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/player/view/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/k;Lcom/xiaopeng/musicradio/music/player/view/k$d;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$2;->b:Lcom/xiaopeng/musicradio/music/player/view/k;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/k$2;->a:Lcom/xiaopeng/musicradio/music/player/view/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$2;->b:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/musicradio/music/player/view/k;)Lcom/xiaopeng/musicradio/music/player/view/k$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$2;->b:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/musicradio/music/player/view/k;)Lcom/xiaopeng/musicradio/music/player/view/k$c;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$2;->a:Lcom/xiaopeng/musicradio/music/player/view/k$d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/view/k$d;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/player/view/k$c;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method
