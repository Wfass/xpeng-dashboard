.class Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundResourceLoaderHolder;
.super Ljava/lang/Object;
.source "SoundResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResourceLoaderHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundResourceLoaderHolder;->instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;
    .locals 1

    .line 86
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundResourceLoaderHolder;->instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;

    return-object v0
.end method
