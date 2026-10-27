.class public final synthetic Landroid/car/-$$Lambda$XpCarFeatures$xr5xGbqomdilBH6717-uy-NfkVA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/-$$Lambda$XpCarFeatures$xr5xGbqomdilBH6717-uy-NfkVA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/-$$Lambda$XpCarFeatures$xr5xGbqomdilBH6717-uy-NfkVA;

    invoke-direct {v0}, Landroid/car/-$$Lambda$XpCarFeatures$xr5xGbqomdilBH6717-uy-NfkVA;-><init>()V

    sput-object v0, Landroid/car/-$$Lambda$XpCarFeatures$xr5xGbqomdilBH6717-uy-NfkVA;->INSTANCE:Landroid/car/-$$Lambda$XpCarFeatures$xr5xGbqomdilBH6717-uy-NfkVA;

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

    check-cast p1, Landroid/view/Display;

    invoke-static {p1}, Landroid/car/XpCarFeatures;->lambda$getICMPhysicalSize$0(Landroid/view/Display;)Z

    move-result p1

    return p1
.end method
