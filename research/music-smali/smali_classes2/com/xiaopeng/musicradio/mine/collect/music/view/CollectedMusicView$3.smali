.class Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$3;
.super Ljava/lang/Object;
.source "CollectedMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 144
    sget p1, Lcom/xiaopeng/musicradio/mine/a$c;->ll_category_title:I

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Latr;->d(I)V

    .line 148
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView$3;->a:Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/mine/collect_music_detail"

    invoke-static {v0, v1, p1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
