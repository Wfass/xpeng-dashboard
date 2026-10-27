.class Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$SoundResourceOperationHolder;
.super Ljava/lang/Object;
.source "SoundResourceOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResourceOperationHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$SoundResourceOperationHolder;->instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;
    .locals 1

    .line 63
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation$SoundResourceOperationHolder;->instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceOperation;

    return-object v0
.end method
