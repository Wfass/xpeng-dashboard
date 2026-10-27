.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$nTZ89r2IMlX3zkAd-sI4hVIollI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$nTZ89r2IMlX3zkAd-sI4hVIollI;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iput p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$nTZ89r2IMlX3zkAd-sI4hVIollI;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$nTZ89r2IMlX3zkAd-sI4hVIollI;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iget v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$nTZ89r2IMlX3zkAd-sI4hVIollI;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->lambda$setUnlockResponse$4$BcmController(I)V

    return-void
.end method
