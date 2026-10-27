.class public final synthetic Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;->INSTANCE:Lcom/xiaopeng/xuiservice/carcontrol/-$$Lambda$CarClientManager$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->lambda$UNDzBq9YY5vB0tVYGv7BxBnAJ8Y(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
