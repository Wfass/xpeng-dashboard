.class public Lcom/xiaopeng/aar/server/ServerConfig$Builder;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final LOG_D:I = 0x3

.field public static final LOG_E:I = 0x6

.field public static final LOG_I:I = 0x4

.field public static final LOG_W:I = 0x5


# instance fields
.field private autoUnSubscribeWhenNaPaDied:Z

.field private interceptSendWhenNotSubscribed:Z

.field private keepAlive:Z

.field private logLength:I

.field private logLevel:I

.field private sendAsync:Z

.field private targetPackage:Ljava/lang/String;

.field private targetPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private useMock:Z

.field private waitInit:Z

.field private waitTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->useMock:Z

    const/4 v0, 0x4

    .line 109
    iput v0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->logLevel:I

    const/16 v0, 0x100

    .line 113
    iput v0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->logLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->waitInit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->waitTimeout:I

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->logLength:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->keepAlive:Z

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->useMock:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->autoUnSubscribeWhenNaPaDied:Z

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->interceptSendWhenNotSubscribed:Z

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->logLevel:I

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Ljava/util/Map;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->targetPackageMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/aar/server/ServerConfig$Builder;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->sendAsync:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/aar/server/ServerConfig;
    .locals 2

    .line 180
    new-instance v0, Lcom/xiaopeng/aar/server/ServerConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/aar/server/ServerConfig;-><init>(Lcom/xiaopeng/aar/server/ServerConfig$Builder;Lcom/xiaopeng/aar/server/ServerConfig$1;)V

    return-object v0
.end method

.method public setAutoUnSubscribeWhenNaPaDied(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->autoUnSubscribeWhenNaPaDied:Z

    return-object p0
.end method

.method public setInterceptSendWhenNotSubscribed(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->interceptSendWhenNotSubscribed:Z

    return-object p0
.end method

.method public setLogLength(I)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 175
    iput p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->logLength:I

    return-object p0
.end method

.method public setLogLevel(I)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 150
    iput p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->logLevel:I

    return-object p0
.end method

.method public setSendAsync(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->sendAsync:Z

    return-object p0
.end method

.method public setTargetPackage(Ljava/lang/String;)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetPackages(Ljava/util/Map;)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xiaopeng/aar/server/ServerConfig$Builder;"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->targetPackageMap:Ljava/util/Map;

    return-object p0
.end method

.method public setWaitInit(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->waitInit:Z

    return-object p0
.end method

.method public setWaitTimeout(I)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 130
    iput p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->waitTimeout:I

    return-object p0
.end method

.method public useKeepAlive(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->keepAlive:Z

    return-object p0
.end method

.method public useMock(Z)Lcom/xiaopeng/aar/server/ServerConfig$Builder;
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerConfig$Builder;->useMock:Z

    return-object p0
.end method
