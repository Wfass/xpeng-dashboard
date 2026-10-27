.class Lcom/xiaopeng/aar/client/RunningConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "RunningConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/RunningConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/client/RunningConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/xiaopeng/aar/client/RunningConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/client/RunningConfig;-><init>(Lcom/xiaopeng/aar/client/RunningConfig$1;)V

    sput-object v0, Lcom/xiaopeng/aar/client/RunningConfig$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/RunningConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/client/RunningConfig;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaopeng/aar/client/RunningConfig$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/RunningConfig;

    return-object v0
.end method
