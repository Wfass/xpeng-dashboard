.class public Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
.super Ljava/lang/Object;
.source "ServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/server/ServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendBuilder"
.end annotation


# instance fields
.field private blob:[B

.field private data:Ljava/lang/String;

.field private ignoreSubscribe:Z

.field private logEnable:Z

.field private module:Ljava/lang/String;

.field private msgId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->ignoreSubscribe:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->data:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)[B
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->blob:[B

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Z
    .locals 0

    .line 320
    iget-boolean p0, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->logEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->module:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;)Ljava/lang/String;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->msgId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public setBlob([B)Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->blob:[B

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public setIgnoreSubscribe(Z)Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
    .locals 0

    .line 329
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->ignoreSubscribe:Z

    return-object p0
.end method

.method public setLogEnable(Z)Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->logEnable:Z

    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->module:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgId(Ljava/lang/String;)Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/aar/server/ServerManager$SendBuilder;->msgId:Ljava/lang/String;

    return-object p0
.end method
