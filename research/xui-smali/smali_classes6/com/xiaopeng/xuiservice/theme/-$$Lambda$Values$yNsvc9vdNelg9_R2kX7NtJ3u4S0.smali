.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$yNsvc9vdNelg9_R2kX7NtJ3u4S0;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Values;->lambda$appendIntegerArray$2(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
