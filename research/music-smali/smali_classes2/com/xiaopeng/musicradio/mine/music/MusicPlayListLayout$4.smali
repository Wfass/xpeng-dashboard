.class Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$4;
.super Ljava/lang/Object;
.source "MusicPlayListLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout$4;->a:Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/mine/music/MusicPlayListLayout;)V

    :cond_0
    return-void
.end method
