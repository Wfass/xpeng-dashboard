.class public final synthetic L-$$Lambda$T-T1SmSkttj4qRcCialcW0A_89U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$T-T1SmSkttj4qRcCialcW0A_89U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$T-T1SmSkttj4qRcCialcW0A_89U;

    invoke-direct {v0}, L-$$Lambda$T-T1SmSkttj4qRcCialcW0A_89U;-><init>()V

    sput-object v0, L-$$Lambda$T-T1SmSkttj4qRcCialcW0A_89U;->INSTANCE:L-$$Lambda$T-T1SmSkttj4qRcCialcW0A_89U;

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

    invoke-static {p1}, Labo;->a([B)[C

    move-result-object p1

    return-object p1
.end method
