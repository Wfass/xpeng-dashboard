.class public final synthetic L-$$Lambda$KyUK_kyOfXeq_cPyr-yq9Rjg6Fo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$KyUK_kyOfXeq_cPyr-yq9Rjg6Fo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$KyUK_kyOfXeq_cPyr-yq9Rjg6Fo;

    invoke-direct {v0}, L-$$Lambda$KyUK_kyOfXeq_cPyr-yq9Rjg6Fo;-><init>()V

    sput-object v0, L-$$Lambda$KyUK_kyOfXeq_cPyr-yq9Rjg6Fo;->INSTANCE:L-$$Lambda$KyUK_kyOfXeq_cPyr-yq9Rjg6Fo;

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

    check-cast p1, Lcom/alibaba/fastjson2/e;

    invoke-static {p1}, Laai;->a(Lcom/alibaba/fastjson2/e;)Laai;

    move-result-object p1

    return-object p1
.end method
