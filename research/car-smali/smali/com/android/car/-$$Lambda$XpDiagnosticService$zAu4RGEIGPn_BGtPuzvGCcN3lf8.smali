.class public final synthetic Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;->INSTANCE:Lcom/android/car/-$$Lambda$XpDiagnosticService$zAu4RGEIGPn_BGtPuzvGCcN3lf8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/car/XpDiagnosticService$Client;

    invoke-static {p1}, Lcom/android/car/XpDiagnosticService;->lambda$dump$2(Lcom/android/car/XpDiagnosticService$Client;)I

    move-result p1

    return p1
.end method
