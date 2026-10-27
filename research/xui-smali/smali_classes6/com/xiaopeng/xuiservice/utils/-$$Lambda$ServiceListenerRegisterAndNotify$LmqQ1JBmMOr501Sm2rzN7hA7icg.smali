.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ServiceListenerRegisterAndNotify$LmqQ1JBmMOr501Sm2rzN7hA7icg;

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

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->lambda$clear$2(Landroid/util/Pair;)V

    return-void
.end method
