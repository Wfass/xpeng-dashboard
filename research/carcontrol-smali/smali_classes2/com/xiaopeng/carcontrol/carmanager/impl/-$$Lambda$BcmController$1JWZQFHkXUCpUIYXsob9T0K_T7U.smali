.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iput p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;->f$1:I

    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iget v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;->f$1:I

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$1JWZQFHkXUCpUIYXsob9T0K_T7U;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->lambda$setReverseMirrorMode$3$BcmController(IZ)V

    return-void
.end method
