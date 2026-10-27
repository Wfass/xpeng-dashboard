.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartNewEggService$3xy2pEpZCLpbc4VBcI41SgPnG0c;

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

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartNewEggService;->lambda$getEggs$6(Ljava/io/File;)Lcom/xiaopeng/xuiservice/egg/Egg;

    move-result-object p1

    return-object p1
.end method
