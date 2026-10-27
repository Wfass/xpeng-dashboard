.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;->f$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;->f$1:Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;->f$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$ZXuPLkquU9ADjr5hAOxig_uX20Y;->f$1:Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->lambda$null$0$CarClientWrapper(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;)V

    return-void
.end method
