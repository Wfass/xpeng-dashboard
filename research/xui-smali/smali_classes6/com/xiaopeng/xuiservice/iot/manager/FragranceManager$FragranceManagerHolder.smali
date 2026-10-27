.class Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceManagerHolder;
.super Ljava/lang/Object;
.source "FragranceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragranceManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 288
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .locals 1

    .line 287
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    return-object v0
.end method
