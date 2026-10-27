.class Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$4;
.super Ljava/lang/Object;
.source "HistoryMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$4;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 142
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Latt;->d(I)V

    .line 143
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView$4;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/mine/history_music_detail"

    invoke-static {v0, v1, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
