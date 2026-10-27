.class Lbhr$2;
.super Ljava/lang/Object;
.source "KugouZoneAlbumBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhr;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbhx;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

.field final synthetic c:Lbhr;


# direct methods
.method constructor <init>(Lbhr;Lbhx;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lbhr$2;->c:Lbhr;

    iput-object p2, p0, Lbhr$2;->a:Lbhx;

    iput-object p3, p0, Lbhr$2;->b:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 147
    iget-object p1, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->i()I

    move-result p1

    iget-object v0, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {v0}, Lbhx;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->b(II)V

    .line 148
    iget-object p1, p0, Lbhr$2;->b:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->d()I

    move-result v2

    iget-object p1, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->c()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->e()I

    move-result v4

    iget-object p1, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->i()I

    move-result v5

    iget-object p1, p0, Lbhr$2;->a:Lbhx;

    invoke-virtual {p1}, Lbhx;->h()I

    move-result v6

    const/4 v1, 0x2

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/musicradio/utils/ah;->a(Landroid/content/Context;IILjava/lang/String;III)V

    return-void
.end method
