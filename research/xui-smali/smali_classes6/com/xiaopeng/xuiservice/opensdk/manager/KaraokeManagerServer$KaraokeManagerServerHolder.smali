.class Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$KaraokeManagerServerHolder;
.super Ljava/lang/Object;
.source "KaraokeManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KaraokeManagerServerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$KaraokeManagerServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;
    .locals 1

    .line 89
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$KaraokeManagerServerHolder;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    return-object v0
.end method
