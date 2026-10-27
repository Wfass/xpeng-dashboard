.class final Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager$SingleInstanceHolder;
.super Ljava/lang/Object;
.source "ScreenTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager$SingleInstanceHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    return-object v0
.end method
