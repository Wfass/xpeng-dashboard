.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$XpuController$rlGKkGO0i9lAyWDXLcEFi7bIfCE;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/XpuController;->lambda$setRaebState$2$XpuController(ZLjava/lang/Void;)V

    return-void
.end method
