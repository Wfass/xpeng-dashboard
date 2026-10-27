.class public final synthetic Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;->INSTANCE:Lcom/alibaba/fastjson2/util/-$$Lambda$db9sDXmKRh6H9A7pI1RrxRtodpQ;

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

    check-cast p1, [B

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toAsciiCharArray([B)[C

    move-result-object p1

    return-object p1
.end method
