.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$YBEFo6Il9Cq3S58M45IIh5uZyIE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->stopWatch()V

    return-void
.end method
