.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$G3GTo-RzjDEWQgwRpWfWyi_cK88;

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

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->isMatch()Z

    move-result p1

    return p1
.end method
