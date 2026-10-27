.class Lcom/xiaopeng/xuiservice/debug/WatchDog$WatchDogHolder;
.super Ljava/lang/Object;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatchDogHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/debug/WatchDog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/xiaopeng/xuiservice/debug/WatchDog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;-><init>(Lcom/xiaopeng/xuiservice/debug/WatchDog$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$WatchDogHolder;->instance:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/debug/WatchDog;
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/xuiservice/debug/WatchDog$WatchDogHolder;->instance:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    return-object v0
.end method
