.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;
.super Ljava/lang/Object;
.source "NrAllRadioLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->refreshAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {v0}, Lbkd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {v2}, Lbkd;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbkd;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
