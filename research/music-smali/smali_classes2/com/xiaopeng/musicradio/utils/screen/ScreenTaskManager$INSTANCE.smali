.class Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$INSTANCE;
.super Ljava/lang/Object;
.source "ScreenTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "INSTANCE"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$INSTANCE;->sInstance:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$INSTANCE;->sInstance:Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    return-object v0
.end method
