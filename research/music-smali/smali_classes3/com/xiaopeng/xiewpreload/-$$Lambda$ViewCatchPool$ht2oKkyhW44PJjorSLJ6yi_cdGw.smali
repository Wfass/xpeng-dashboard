.class public final synthetic Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Laa$d;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Lcom/xiaopeng/xiewpreload/ViewCatchKey;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xiewpreload/ViewCatchPool;Ljava/util/ArrayList;Lcom/xiaopeng/xiewpreload/ViewCatchKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;->f$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    iput-object p2, p0, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;->f$2:Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;->f$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    iget-object v1, p0, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/xiewpreload/-$$Lambda$ViewCatchPool$ht2oKkyhW44PJjorSLJ6yi_cdGw;->f$2:Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->lambda$preloadViews$0$ViewCatchPool(Ljava/util/ArrayList;Lcom/xiaopeng/xiewpreload/ViewCatchKey;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
