.class Lboe$1;
.super Ljava/lang/Object;
.source "CollectionSearchBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboe;->a(Lcom/xiaopeng/musicradio/search/result/mix/view/MixItemLayout;Lboj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

.field final synthetic b:Lboe;


# direct methods
.method constructor <init>(Lboe;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lboe$1;->b:Lboe;

    iput-object p2, p0, Lboe$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 132
    iget-object p1, p0, Lboe$1;->b:Lboe;

    iget-object p1, p1, Lboe;->a:Lbnn;

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lboe$1;->b:Lboe;

    iget-object p1, p1, Lboe;->a:Lbnn;

    iget-object v0, p0, Lboe$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lboe$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lboe$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lbnn;->playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lboe$1;->b:Lboe;

    invoke-static {p1}, Lboe;->a(Lboe;)I

    move-result p1

    invoke-static {p1}, Lbom;->h(I)V

    :cond_0
    return-void
.end method
