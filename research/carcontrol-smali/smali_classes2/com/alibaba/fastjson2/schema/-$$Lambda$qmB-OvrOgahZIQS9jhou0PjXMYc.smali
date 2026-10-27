.class public final synthetic Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;->INSTANCE:Lcom/alibaba/fastjson2/schema/-$$Lambda$qmB-OvrOgahZIQS9jhou0PjXMYc;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->validateIPv4(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
