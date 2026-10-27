.class public final synthetic Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->lambda$onStopVibrate$1(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
