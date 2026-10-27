.class public final synthetic Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/common/util/-$$Lambda$ThreadUtils$Nb9nlH0za-mBdTHAABuC_ZFhP1k;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/common/util/ThreadUtils;->lambda$execute$0(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
