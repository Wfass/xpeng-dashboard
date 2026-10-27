.class public final synthetic Lcom/xiaopeng/xuiservice/smart/env/-$$Lambda$EnvImpl$Ptpi94HW4hHz7vzzs7wSIa8PgAE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/env/-$$Lambda$EnvImpl$Ptpi94HW4hHz7vzzs7wSIa8PgAE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/env/-$$Lambda$EnvImpl$Ptpi94HW4hHz7vzzs7wSIa8PgAE;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/env/-$$Lambda$EnvImpl$Ptpi94HW4hHz7vzzs7wSIa8PgAE;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/env/-$$Lambda$EnvImpl$Ptpi94HW4hHz7vzzs7wSIa8PgAE;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/env/-$$Lambda$EnvImpl$Ptpi94HW4hHz7vzzs7wSIa8PgAE;

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

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/env/EnvImpl;->lambda$addNameValue$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
