.class Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$ResourceManagerHolder;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;-><init>(Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$ResourceManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager$ResourceManagerHolder;->sInstance:Lcom/xiaopeng/xuiservice/operation/resource/ResourceManager;

    return-object v0
.end method
