.class public final synthetic L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;

    invoke-direct {v0}, L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;-><init>()V

    sput-object v0, L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;->INSTANCE:L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;

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

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
