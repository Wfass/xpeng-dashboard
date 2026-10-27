.class Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;
.super Ljava/lang/Object;
.source "NrBaseLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;I)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;->b:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;

    iput p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;->b:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1$1;->a:I

    invoke-virtual {v0, v1}, Lbkd;->notifyItemChanged(I)V

    return-void
.end method
