.class public final synthetic Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$iz6GShYrRflLuPWiUp36tDUclIw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/DateUtils;->isLocalDate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
