.class Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$SingletonHolder;
.super Ljava/lang/Object;
.source "FragranceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;
    .locals 1

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$SingletonHolder;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    return-object v0
.end method
