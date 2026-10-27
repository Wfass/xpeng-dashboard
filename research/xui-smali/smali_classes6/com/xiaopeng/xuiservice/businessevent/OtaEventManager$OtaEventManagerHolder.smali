.class Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$OtaEventManagerHolder;
.super Ljava/lang/Object;
.source "OtaEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtaEventManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;-><init>(Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$OtaEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager$OtaEventManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    return-object v0
.end method
