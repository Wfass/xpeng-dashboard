.class Lcom/xiaopeng/unity/capsule/CapsuleManager$SingleHolder;
.super Ljava/lang/Object;
.source "CapsuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/capsule/CapsuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/unity/capsule/CapsuleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-direct {v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$SingleHolder;->instance:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/unity/capsule/CapsuleManager;
    .locals 1

    .line 104
    sget-object v0, Lcom/xiaopeng/unity/capsule/CapsuleManager$SingleHolder;->instance:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    return-object v0
.end method
