.class public final synthetic L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;

    invoke-direct {v0}, L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;-><init>()V

    sput-object v0, L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;->INSTANCE:L-$$Lambda$LHqoxvRwaV7ZwYgZsyMg40F8R3E;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Laay;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
