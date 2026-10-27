.class public final synthetic Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;->INSTANCE:Lcom/xiaopeng/xuiservice/theme/-$$Lambda$Values$FcrHwyE7TqXsHAvb0foEpzWtwNk;

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

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/theme/Values;->lambda$appendBooleanArray$1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
