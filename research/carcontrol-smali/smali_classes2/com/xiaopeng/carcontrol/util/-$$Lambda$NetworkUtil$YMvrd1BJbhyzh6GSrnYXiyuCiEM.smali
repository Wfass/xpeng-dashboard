.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;->INSTANCE:Lcom/xiaopeng/carcontrol/util/-$$Lambda$NetworkUtil$YMvrd1BJbhyzh6GSrnYXiyuCiEM;

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

    check-cast p1, Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/NetworkUtil;->lambda$getHttp$0(Lcom/xiaopeng/lib/framework/module/IModuleEntry;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object p1

    return-object p1
.end method
