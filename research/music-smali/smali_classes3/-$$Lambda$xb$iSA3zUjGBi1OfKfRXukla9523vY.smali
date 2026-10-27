.class public final synthetic L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;

    invoke-direct {v0}, L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;-><init>()V

    sput-object v0, L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;->INSTANCE:L-$$Lambda$xb$iSA3zUjGBi1OfKfRXukla9523vY;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lxb;->lambda$iSA3zUjGBi1OfKfRXukla9523vY(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
