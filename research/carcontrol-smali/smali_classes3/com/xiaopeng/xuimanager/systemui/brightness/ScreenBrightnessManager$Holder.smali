.class Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$Holder;
.super Ljava/lang/Object;
.source "ScreenBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 339
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;-><init>(Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
    .locals 1

    .line 338
    sget-object v0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$Holder;->sInstance:Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;

    return-object v0
.end method
