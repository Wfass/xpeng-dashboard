.class Lbnp$1;
.super Ljava/lang/Object;
.source "SearchCollectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnp;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

.field final synthetic b:Lbnp;


# direct methods
.method constructor <init>(Lbnp;Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lbnp$1;->b:Lbnp;

    iput-object p2, p0, Lbnp$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 46
    iget-object p1, p0, Lbnp$1;->b:Lbnp;

    iget-object p1, p1, Lbnp;->h:Lbnn;

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lbnp$1;->b:Lbnp;

    iget-object p1, p1, Lbnp;->h:Lbnn;

    iget-object v0, p0, Lbnp$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbnp$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbnp$1;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lbnn;->playControlMusicCollectListSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
