.class Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$FreezerManagerHolder;
.super Ljava/lang/Object;
.source "FreezerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FreezerManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 328
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$FreezerManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;
    .locals 1

    .line 327
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager$FreezerManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FreezerManager;

    return-object v0
.end method
