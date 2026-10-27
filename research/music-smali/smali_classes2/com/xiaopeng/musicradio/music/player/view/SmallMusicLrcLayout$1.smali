.class Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout$1;
.super Ljava/lang/Object;
.source "SmallMusicLrcLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/SmallMusicLrcLayout;->callOnClick()Z

    return-void
.end method
