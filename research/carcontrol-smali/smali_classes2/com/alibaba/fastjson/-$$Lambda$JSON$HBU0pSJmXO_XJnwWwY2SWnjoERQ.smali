.class public final synthetic Lcom/alibaba/fastjson/-$$Lambda$JSON$HBU0pSJmXO_XJnwWwY2SWnjoERQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson/-$$Lambda$JSON$HBU0pSJmXO_XJnwWwY2SWnjoERQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/-$$Lambda$JSON$HBU0pSJmXO_XJnwWwY2SWnjoERQ;

    invoke-direct {v0}, Lcom/alibaba/fastjson/-$$Lambda$JSON$HBU0pSJmXO_XJnwWwY2SWnjoERQ;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/-$$Lambda$JSON$HBU0pSJmXO_XJnwWwY2SWnjoERQ;->INSTANCE:Lcom/alibaba/fastjson/-$$Lambda$JSON$HBU0pSJmXO_XJnwWwY2SWnjoERQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/alibaba/fastjson/JSON;->lambda$static$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
