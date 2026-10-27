.class public final synthetic Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;->INSTANCE:Lcom/xiaopeng/xuiservice/egg/-$$Lambda$ExecRecord$2KoETMxStKkC_GerK0Um8hN9hD8;

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

    check-cast p1, Lcom/xiaopeng/xuiservice/egg/Egg;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/egg/ExecRecord;->lambda$recordLastExecInMemory$0(Lcom/xiaopeng/xuiservice/egg/Egg;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
