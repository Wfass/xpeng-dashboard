.class public final synthetic L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;

    invoke-direct {v0}, L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;-><init>()V

    sput-object v0, L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;->INSTANCE:L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;

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

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
