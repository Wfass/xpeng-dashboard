.class Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$FridgeManagerHolder;
.super Ljava/lang/Object;
.source "FridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FridgeManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 283
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$FridgeManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;
    .locals 1

    .line 282
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager$FridgeManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    return-object v0
.end method
