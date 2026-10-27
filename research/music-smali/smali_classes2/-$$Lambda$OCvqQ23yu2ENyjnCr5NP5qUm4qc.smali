.class public final synthetic L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;

    invoke-direct {v0}, L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;-><init>()V

    sput-object v0, L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;->INSTANCE:L-$$Lambda$OCvqQ23yu2ENyjnCr5NP5qUm4qc;

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

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method
