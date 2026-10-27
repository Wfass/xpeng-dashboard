.class Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$SingletonHolder;
.super Ljava/lang/Object;
.source "ThemeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    return-object v0
.end method
