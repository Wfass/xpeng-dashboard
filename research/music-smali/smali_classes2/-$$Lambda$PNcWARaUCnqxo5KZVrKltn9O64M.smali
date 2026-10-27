.class public final synthetic L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;

    invoke-direct {v0}, L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;-><init>()V

    sput-object v0, L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;->INSTANCE:L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
