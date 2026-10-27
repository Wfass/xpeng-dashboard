.class public final synthetic Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;->INSTANCE:Lcom/android/car/-$$Lambda$CarPropertyService$Client$djwGbPCcOlsH0LgCCyQKsBkx7j4;

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

    invoke-static {p1}, Lcom/android/car/CarPropertyService$Client;->lambda$addProperty$0(Ljava/lang/Integer;)Landroid/util/ArraySet;

    move-result-object p1

    return-object p1
.end method
