.class Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceManagerHolder;
.super Ljava/lang/Object;
.source "SoundResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResourceManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;-><init>(Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceManagerHolder;->instance:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;
    .locals 1

    .line 125
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager$SoundResourceManagerHolder;->instance:Lcom/xiaopeng/xuimanager/soundresource/SoundResourceManager;

    return-object v0
.end method
