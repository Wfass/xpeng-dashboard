.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$6eLsNzZx82cZRD0M9AsT_fldr7M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/XpDiagnosticService$DiagHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/XpDiagnosticService$DiagHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$6eLsNzZx82cZRD0M9AsT_fldr7M;->f$0:Lcom/android/car/XpDiagnosticService$DiagHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$6eLsNzZx82cZRD0M9AsT_fldr7M;->f$0:Lcom/android/car/XpDiagnosticService$DiagHandler;

    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {v0, p1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->lambda$handleDiagMsg$2(Lcom/android/car/XpDiagnosticService$DiagHandler;Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method
