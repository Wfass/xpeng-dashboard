.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$1;
.super Ljava/lang/Object;
.source "MsRmCategoryDetailLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCompleted()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0}, Lbga;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmCategoryDetailLayout;->c:Lbga;

    invoke-virtual {v0}, Lbga;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
