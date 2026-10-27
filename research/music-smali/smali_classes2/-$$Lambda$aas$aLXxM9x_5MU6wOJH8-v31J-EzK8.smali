.class public final synthetic L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;

    invoke-direct {v0}, L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;-><init>()V

    sput-object v0, L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;->INSTANCE:L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;

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

    check-cast p1, Ljava/awt/Point;

    invoke-static {p1}, Laas;->lambda$aLXxM9x_5MU6wOJH8-v31J-EzK8(Ljava/awt/Point;)I

    move-result p1

    return p1
.end method
