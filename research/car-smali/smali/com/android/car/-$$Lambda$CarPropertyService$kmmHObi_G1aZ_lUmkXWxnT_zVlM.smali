.class public final synthetic Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;->INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$kmmHObi_G1aZ_lUmkXWxnT_zVlM;

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

    check-cast p1, Lcom/android/car/CarPropertyService$Client;

    invoke-static {p1}, Lcom/android/car/CarPropertyService;->lambda$dump$1(Lcom/android/car/CarPropertyService$Client;)I

    move-result p1

    return p1
.end method
