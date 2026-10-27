.class public final synthetic L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;

    invoke-direct {v0}, L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;-><init>()V

    sput-object v0, L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;->INSTANCE:L-$$Lambda$xb$bvtb9vArX8JRoe-i5bJc2hF9tes;

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

    invoke-static {p1}, Lxb;->lambda$bvtb9vArX8JRoe-i5bJc2hF9tes(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
