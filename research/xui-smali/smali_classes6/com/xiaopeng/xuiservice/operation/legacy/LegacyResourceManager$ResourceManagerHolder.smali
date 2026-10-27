.class Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$ResourceManagerHolder;
.super Ljava/lang/Object;
.source "LegacyResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;-><init>(Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$ResourceManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager$ResourceManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/operation/legacy/LegacyResourceManager;

    return-object v0
.end method
