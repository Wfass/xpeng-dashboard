.class Lbog$3;
.super Ljava/lang/Object;
.source "SongSearchBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbog;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

.field final synthetic b:Lbog;


# direct methods
.method constructor <init>(Lbog;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lbog$3;->b:Lbog;

    iput-object p2, p0, Lbog$3;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lbog$3;->b:Lbog;

    iget-object p1, p1, Lbog;->a:Lbnn;

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lbog$3;->b:Lbog;

    iget-object p1, p1, Lbog;->a:Lbnn;

    iget-object v0, p0, Lbog$3;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-interface {p1, v0}, Lbnn;->favOrNot(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    :cond_0
    return-void
.end method
