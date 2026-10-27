.class Lcom/xiaopeng/lib/feature/CommonCarConfig$SingletonHolder;
.super Ljava/lang/Object;
.source "CommonCarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/feature/CommonCarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/lib/feature/CommonCarConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/lib/feature/CommonCarConfig;

    invoke-direct {v0}, Lcom/xiaopeng/lib/feature/CommonCarConfig;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/feature/CommonCarConfig$SingletonHolder;->sInstance:Lcom/xiaopeng/lib/feature/CommonCarConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/feature/CommonCarConfig;
    .locals 1

    .line 15
    sget-object v0, Lcom/xiaopeng/lib/feature/CommonCarConfig$SingletonHolder;->sInstance:Lcom/xiaopeng/lib/feature/CommonCarConfig;

    return-object v0
.end method
