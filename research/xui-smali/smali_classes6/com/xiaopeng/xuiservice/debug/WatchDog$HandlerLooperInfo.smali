.class Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;
.super Ljava/lang/Object;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerLooperInfo"
.end annotation


# instance fields
.field public looperMessage:Ljava/lang/String;

.field public looperTick:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog$1;

    .line 374
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/debug/WatchDog$HandlerLooperInfo;-><init>()V

    return-void
.end method
