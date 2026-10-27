.class Lbof$1;
.super Ljava/lang/Object;
.source "SingerSearchBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbof;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lbok;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbof;


# direct methods
.method constructor <init>(Lbof;Ljava/util/List;I)V
    .locals 0

    .line 139
    iput-object p1, p0, Lbof$1;->c:Lbof;

    iput-object p2, p0, Lbof$1;->a:Ljava/util/List;

    iput p3, p0, Lbof$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 142
    iget-object p1, p0, Lbof$1;->c:Lbof;

    iget-object p1, p1, Lbof;->a:Lbnn;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lbof$1;->c:Lbof;

    iget-object p1, p1, Lbof;->a:Lbnn;

    iget-object v0, p0, Lbof$1;->a:Ljava/util/List;

    iget v1, p0, Lbof$1;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbof$1;->a:Ljava/util/List;

    iget v2, p0, Lbof$1;->b:I

    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-interface {p1, v0, v1}, Lbnn;->playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lbof$1;->c:Lbof;

    invoke-static {p1}, Lbof;->a(Lbof;)I

    move-result p1

    invoke-static {p1}, Lbom;->j(I)V

    :cond_0
    return-void
.end method
