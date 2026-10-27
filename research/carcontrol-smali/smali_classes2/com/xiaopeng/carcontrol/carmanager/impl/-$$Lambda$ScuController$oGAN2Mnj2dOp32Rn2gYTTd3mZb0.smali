.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$oGAN2Mnj2dOp32Rn2gYTTd3mZb0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/BaseCarController$ThrowingFunction;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$oGAN2Mnj2dOp32Rn2gYTTd3mZb0;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$oGAN2Mnj2dOp32Rn2gYTTd3mZb0;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->lambda$getScuRearMirrorControlState$59$ScuController(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
