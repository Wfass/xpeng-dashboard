.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;->f$2:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;->f$2:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->lambda$getFaultDetail$1(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method
