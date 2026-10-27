.class Lcom/xiaopeng/aar/server/RunningConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "RunningConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/RunningConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/server/RunningConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/xiaopeng/aar/server/RunningConfig;

    invoke-direct {v0}, Lcom/xiaopeng/aar/server/RunningConfig;-><init>()V

    sput-object v0, Lcom/xiaopeng/aar/server/RunningConfig$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/RunningConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/aar/server/RunningConfig;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/aar/server/RunningConfig$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/server/RunningConfig;

    return-object v0
.end method
