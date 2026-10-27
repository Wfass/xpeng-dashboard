.class Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$FactoryEventManagerHolder;
.super Ljava/lang/Object;
.source "FactoryEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryEventManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$FactoryEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager$FactoryEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    return-object v0
.end method
