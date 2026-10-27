.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;
.super Ljava/lang/Object;
.source "MsRmLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->refreshAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lbgb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lbgb;

    move-result-object v0

    invoke-virtual {v0}, Lbgb;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lbgb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;->access$200(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmLayout;)Lbgb;

    move-result-object v2

    invoke-virtual {v2}, Lbgb;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbgb;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
