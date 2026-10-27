.class Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$SingletonHolder;
.super Ljava/lang/Object;
.source "LightLanuageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    return-object v0
.end method
