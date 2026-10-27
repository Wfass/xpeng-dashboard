.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->lambda$reserveRemoteDiagnose$3(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method
