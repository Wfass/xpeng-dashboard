.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$SrYOJyRgpSRbgDO0uH05C1mjeX0;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->lambda$startMassager$4$MsmController(Ljava/util/Set;Ljava/lang/Integer;)V

    return-void
.end method
