.class Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$NetworkEventManagerHolder;
.super Ljava/lang/Object;
.source "NetworkEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkEventManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$NetworkEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager$NetworkEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;

    return-object v0
.end method
