.class public final synthetic Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/innerutils/Retry$RetryInterval;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;->INSTANCE:Lcom/xiaopeng/xuiservice/innerutils/-$$Lambda$Retry$pDpCyCKCtPyw7vNTQ1BsVGgjnDE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)J
    .locals 2

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/innerutils/Retry;->lambda$static$0(I)J

    move-result-wide v0

    return-wide v0
.end method
