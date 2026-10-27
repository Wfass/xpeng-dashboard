.class Lcom/xiaopeng/xuimanager/ambient/AmbientManager$SingletonHolder;
.super Ljava/lang/Object;
.source "AmbientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;-><init>(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
    .locals 1

    .line 65
    sget-object v0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/AmbientManager;

    return-object v0
.end method
