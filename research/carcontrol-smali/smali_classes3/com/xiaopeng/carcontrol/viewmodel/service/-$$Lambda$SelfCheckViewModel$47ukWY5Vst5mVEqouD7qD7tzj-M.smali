.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->lambda$setCarCheckState$4(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method
