.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$oT_MKr1DSdjLIH73ozB7Q98Xth8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$oT_MKr1DSdjLIH73ozB7Q98Xth8;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$oT_MKr1DSdjLIH73ozB7Q98Xth8;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->lambda$getMobilePhone$2(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method
