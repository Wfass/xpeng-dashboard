.class Lbnp$2;
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

    .line 51
    iput-object p1, p0, Lbnp$2;->b:Lbnp;

    iput-object p2, p0, Lbnp$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 54
    iget-object p1, p0, Lbnp$2;->b:Lbnp;

    invoke-static {p1}, Lbnp;->a(Lbnp;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lbnp$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbnp$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbnp$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$CollectBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbnp$2;->b:Lbnp;

    invoke-static {v3}, Lbnp;->b(Lbnp;)I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Lboo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
