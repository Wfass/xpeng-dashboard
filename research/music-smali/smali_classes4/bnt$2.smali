.class Lbnt$2;
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

    .line 51
    iput-object p1, p0, Lbnt$2;->b:Lbnt;

    iput-object p2, p0, Lbnt$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 54
    iget-object p1, p0, Lbnt$2;->b:Lbnt;

    invoke-static {p1}, Lbnt;->a(Lbnt;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lbnt$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lbnt$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lbnt$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lbnt$2;->b:Lbnt;

    invoke-static {p1}, Lbnt;->b(Lbnt;)I

    move-result v5

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lboo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 55
    iget-object p1, p0, Lbnt$2;->b:Lbnt;

    invoke-static {p1}, Lbnt;->b(Lbnt;)I

    move-result p1

    iget-object v0, p0, Lbnt$2;->a:Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/search/MixSearchResultBean$SingerBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbom;->b(ILjava/lang/String;)V

    return-void
.end method
