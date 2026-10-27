.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;->INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$DiagHandler$5aH2gS3VvGwYQvp3xDVCbO1Zwdk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {p1}, Lcom/android/car/XpDiagnosticService$DiagHandler;->lambda$handleDiagMsg$1(Landroid/car/hardware/property/CarPropertyEvent;)Z

    move-result p1

    return p1
.end method
