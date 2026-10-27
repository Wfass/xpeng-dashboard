.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$m4jewEimtS3lbQvaaxdCpLjn9nY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$m4jewEimtS3lbQvaaxdCpLjn9nY;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpDiagnosticService$m4jewEimtS3lbQvaaxdCpLjn9nY;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Lcom/android/car/XpDiagnosticService$Client;

    invoke-static {v0, p1}, Lcom/android/car/XpDiagnosticService;->lambda$dump$4(Ljava/io/PrintWriter;Lcom/android/car/XpDiagnosticService$Client;)V

    return-void
.end method
