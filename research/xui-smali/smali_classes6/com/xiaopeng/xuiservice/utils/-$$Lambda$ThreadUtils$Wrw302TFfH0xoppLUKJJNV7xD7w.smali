.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;->INSTANCE:Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$Wrw302TFfH0xoppLUKJJNV7xD7w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->lambda$static$3(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
