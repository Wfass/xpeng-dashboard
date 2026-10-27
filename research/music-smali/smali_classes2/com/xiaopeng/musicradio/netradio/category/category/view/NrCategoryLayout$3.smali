.class Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;
.super Ljava/lang/Object;
.source "NrCategoryLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->refreshAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lbjv;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lbjv;

    move-result-object v0

    invoke-virtual {v0}, Lbjv;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lbjv;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout$3;->a:Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;->access$100(Lcom/xiaopeng/musicradio/netradio/category/category/view/NrCategoryLayout;)Lbjv;

    move-result-object v2

    invoke-virtual {v2}, Lbjv;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbjv;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
