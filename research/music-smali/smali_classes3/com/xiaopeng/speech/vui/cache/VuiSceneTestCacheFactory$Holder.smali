.class Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$Holder;
.super Ljava/lang/Object;
.source "VuiSceneTestCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;-><init>(Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$1;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$Holder;->Instance:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory$Holder;->Instance:Lcom/xiaopeng/speech/vui/cache/VuiSceneTestCacheFactory;

    return-object v0
.end method
