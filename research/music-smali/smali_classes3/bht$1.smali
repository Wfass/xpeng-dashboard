.class Lbht$1;
.super Ljava/lang/Object;
.source "KugouZoneCategoryBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbht;->a(Lcom/xiaopeng/musicradio/music/kugouzone/view/ZoneMixItemLayout;Lbhz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;

.field final synthetic c:Lbhz;

.field final synthetic d:I

.field final synthetic e:Lbht;


# direct methods
.method constructor <init>(Lbht;Lcom/xiaopeng/musicradio/music/kugouzone/view/d;Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;Lbhz;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lbht$1;->e:Lbht;

    iput-object p2, p0, Lbht$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

    iput-object p3, p0, Lbht$1;->b:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;

    iput-object p4, p0, Lbht$1;->c:Lbhz;

    iput p5, p0, Lbht$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 91
    iget-object p1, p0, Lbht$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/view/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/d;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbht$1;->b:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lbht$1;->b:Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneCategoryBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lbht$1;->c:Lbhz;

    invoke-virtual {p1}, Lbhz;->e()I

    move-result v3

    iget-object p1, p0, Lbht$1;->c:Lbhz;

    invoke-virtual {p1}, Lbhz;->i()I

    move-result v4

    iget-object p1, p0, Lbht$1;->c:Lbhz;

    invoke-virtual {p1}, Lbhz;->h()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/musicradio/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 92
    iget-object p1, p0, Lbht$1;->c:Lbhz;

    invoke-virtual {p1}, Lbhz;->i()I

    move-result p1

    iget v0, p0, Lbht$1;->d:I

    invoke-static {p1, v0}, Lbjl;->d(II)V

    return-void
.end method
