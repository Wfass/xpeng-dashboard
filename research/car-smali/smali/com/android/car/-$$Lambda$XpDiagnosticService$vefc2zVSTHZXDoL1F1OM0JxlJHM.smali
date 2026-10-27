.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$vefc2zVSTHZXDoL1F1OM0JxlJHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/car/diagnostic/EcusFailureStates;


# direct methods
.method public synthetic constructor <init>(Landroid/car/diagnostic/EcusFailureStates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$vefc2zVSTHZXDoL1F1OM0JxlJHM;->f$0:Landroid/car/diagnostic/EcusFailureStates;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$vefc2zVSTHZXDoL1F1OM0JxlJHM;->f$0:Landroid/car/diagnostic/EcusFailureStates;

    check-cast p1, [I

    invoke-static {v0, p1}, Lcom/android/car/XpDiagnosticService;->lambda$vefc2zVSTHZXDoL1F1OM0JxlJHM(Landroid/car/diagnostic/EcusFailureStates;[I)V

    return-void
.end method
