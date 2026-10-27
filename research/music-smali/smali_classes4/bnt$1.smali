.class Lbnt$1;
.super Ljava/lang/Object;
.source "SearchSingerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnt;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

.field final synthetic b:Lbnt;


# direct methods
.method constructor <init>(Lbnt;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lbnt$1;->b:Lbnt;

    iput-object p2, p0, Lbnt$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lbnt$1;->b:Lbnt;

    iget-object p1, p1, Lbnt;->h:Lbnn;

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lbnt$1;->b:Lbnt;

    iget-object p1, p1, Lbnt;->h:Lbnn;

    iget-object v0, p0, Lbnt$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbnt$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lbnn;->playControlMusicSingerListSign(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
