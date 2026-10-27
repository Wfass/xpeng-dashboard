.class Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastManagerHolder;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;-><init>(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;
    .locals 1

    .line 52
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    return-object v0
.end method
