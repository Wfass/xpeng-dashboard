.class Lcom/xiaopeng/unity/lludance/LluDanceManager$SingleHolder;
.super Ljava/lang/Object;
.source "LluDanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/lludance/LluDanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/unity/lludance/LluDanceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 378
    new-instance v0, Lcom/xiaopeng/unity/lludance/LluDanceManager;

    invoke-direct {v0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager$SingleHolder;->instance:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/lludance/LluDanceManager;
    .locals 1

    .line 377
    sget-object v0, Lcom/xiaopeng/unity/lludance/LluDanceManager$SingleHolder;->instance:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    return-object v0
.end method
