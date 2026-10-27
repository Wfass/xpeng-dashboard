.class Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$BusinessEventManagerHolder;
.super Ljava/lang/Object;
.source "BusinessEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BusinessEventManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$BusinessEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$BusinessEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    return-object v0
.end method
