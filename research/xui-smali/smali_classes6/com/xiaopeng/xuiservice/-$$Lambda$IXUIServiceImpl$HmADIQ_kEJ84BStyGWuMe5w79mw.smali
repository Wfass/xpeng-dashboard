.class public final synthetic Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;->INSTANCE:Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;

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

    check-cast p1, Lcom/xiaopeng/xuiservice/XUIServiceBase;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->lambda$setDependence$0(Lcom/xiaopeng/xuiservice/XUIServiceBase;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
