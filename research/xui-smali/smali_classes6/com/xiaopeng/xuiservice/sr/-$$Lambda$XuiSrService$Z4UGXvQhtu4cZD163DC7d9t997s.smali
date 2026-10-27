.class public final synthetic Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;->INSTANCE:Lcom/xiaopeng/xuiservice/sr/-$$Lambda$XuiSrService$Z4UGXvQhtu4cZD163DC7d9t997s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->lambda$hide$1(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
