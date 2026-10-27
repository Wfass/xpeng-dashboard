.class Lbhv$3;
.super Ljava/lang/Object;
.source "KugouZoneSongBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbhv;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

.field final synthetic b:Lbib;

.field final synthetic c:Lbhv;


# direct methods
.method constructor <init>(Lbhv;Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbib;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lbhv$3;->c:Lbhv;

    iput-object p2, p0, Lbhv$3;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    iput-object p3, p0, Lbhv$3;->b:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 139
    iget-object p1, p0, Lbhv$3;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;->getTitleTv()Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {v1}, Lbib;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {p1}, Lbib;->c()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {p1}, Lbib;->e()I

    move-result v3

    iget-object p1, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result v4

    iget-object p1, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {p1}, Lbib;->h()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lbjp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 140
    iget-object p1, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {p1}, Lbib;->i()I

    move-result p1

    iget-object v0, p0, Lbhv$3;->b:Lbib;

    invoke-virtual {v0}, Lbib;->h()I

    move-result v0

    invoke-static {p1, v0}, Lbjl;->b(II)V

    return-void
.end method
