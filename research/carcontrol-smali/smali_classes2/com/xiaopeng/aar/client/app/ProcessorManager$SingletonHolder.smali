.class Lcom/xiaopeng/aar/client/app/ProcessorManager$SingletonHolder;
.super Ljava/lang/Object;
.source "ProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/app/ProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/aar/client/app/ProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaopeng/aar/client/app/ProcessorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/aar/client/app/ProcessorManager;-><init>(Lcom/xiaopeng/aar/client/app/ProcessorManager$1;)V

    sput-object v0, Lcom/xiaopeng/aar/client/app/ProcessorManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/app/ProcessorManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/aar/client/app/ProcessorManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/xiaopeng/aar/client/app/ProcessorManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/aar/client/app/ProcessorManager;

    return-object v0
.end method
