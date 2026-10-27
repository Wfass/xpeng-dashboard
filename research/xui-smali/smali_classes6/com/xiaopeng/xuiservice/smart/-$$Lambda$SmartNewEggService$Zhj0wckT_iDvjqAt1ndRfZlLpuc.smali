.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$Zhj0wckT_iDvjqAt1ndRfZlLpuc;

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

    check-cast p1, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$getEggs$7(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)Lcom/xiaopeng/xuiservice/egg/Egg;

    move-result-object p1

    return-object p1
.end method
