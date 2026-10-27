.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$EFg6OY25rDSzBPkB37PhOfoV2Co;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Landroid/car/diagnostic/EcusFailureStates;


# direct methods
.method public synthetic constructor <init>(Landroid/car/diagnostic/EcusFailureStates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$EFg6OY25rDSzBPkB37PhOfoV2Co;->f$0:Landroid/car/diagnostic/EcusFailureStates;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$EFg6OY25rDSzBPkB37PhOfoV2Co;->f$0:Landroid/car/diagnostic/EcusFailureStates;

    invoke-static {v0, p1}, Lcom/android/car/XpDiagnosticService;->lambda$EFg6OY25rDSzBPkB37PhOfoV2Co(Landroid/car/diagnostic/EcusFailureStates;I)V

    return-void
.end method
