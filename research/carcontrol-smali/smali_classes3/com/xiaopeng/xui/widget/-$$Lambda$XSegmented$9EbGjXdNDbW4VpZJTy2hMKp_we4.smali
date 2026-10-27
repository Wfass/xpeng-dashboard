.class public final synthetic Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/widget/XSegmented;

.field public final synthetic f$1:Ljava/lang/Double;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/widget/XSegmented;Ljava/lang/Double;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;->f$0:Lcom/xiaopeng/xui/widget/XSegmented;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;->f$1:Ljava/lang/Double;

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;->f$0:Lcom/xiaopeng/xui/widget/XSegmented;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;->f$1:Ljava/lang/Double;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSegmented$9EbGjXdNDbW4VpZJTy2hMKp_we4;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSegmented;->lambda$onVuiElementEvent$2$XSegmented(Ljava/lang/Double;Landroid/view/View;)V

    return-void
.end method
