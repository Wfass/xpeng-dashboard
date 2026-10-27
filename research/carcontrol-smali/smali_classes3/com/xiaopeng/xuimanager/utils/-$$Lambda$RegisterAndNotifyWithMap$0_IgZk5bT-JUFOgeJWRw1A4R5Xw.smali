.class public final synthetic Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;->INSTANCE:Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;

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

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->lambda$register$0(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
