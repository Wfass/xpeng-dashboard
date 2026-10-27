.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$He3YpbHjtOTvwgcB1MRVlvqQzxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/car/XpDiagnosticService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/XpDiagnosticService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$He3YpbHjtOTvwgcB1MRVlvqQzxM;->f$0:Lcom/android/car/XpDiagnosticService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$He3YpbHjtOTvwgcB1MRVlvqQzxM;->f$0:Lcom/android/car/XpDiagnosticService;

    check-cast p1, Lcom/android/car/XpDiagnosticService$Client;

    invoke-static {v0, p1}, Lcom/android/car/XpDiagnosticService;->lambda$dump$6(Lcom/android/car/XpDiagnosticService;Lcom/android/car/XpDiagnosticService$Client;)Z

    move-result p1

    return p1
.end method
