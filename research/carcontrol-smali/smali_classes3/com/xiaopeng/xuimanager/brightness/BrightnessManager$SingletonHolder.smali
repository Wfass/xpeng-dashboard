.class Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$SingletonHolder;
.super Ljava/lang/Object;
.source "BrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;-><init>(Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/xuimanager/brightness/BrightnessManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/brightness/BrightnessManager;

    return-object v0
.end method
