.class public Lcom/xiaopeng/devtools/system/c/c;
.super Ljava/lang/Object;
.source "UDPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/system/c/c$b;,
        Lcom/xiaopeng/devtools/system/c/c$a;
    }
.end annotation


# instance fields
.field private final BG:Lcom/xiaopeng/devtools/utils/b/a;

.field private BH:Ljava/net/DatagramSocket;

.field private BI:Ljava/net/DatagramPacket;

.field private BJ:Ljava/net/DatagramPacket;

.field private BK:Lcom/xiaopeng/devtools/system/c/c$b;

.field private BL:Ljava/lang/String;

.field private BM:Ljava/net/InetAddress;

.field private Bp:Z

.field private uR:I

.field private xM:Lcom/xiaopeng/devtools/system/c/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/system/c/c;->Bp:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->xM:Lcom/xiaopeng/devtools/system/c/c$a;

    .line 39
    new-instance v0, Lcom/xiaopeng/devtools/utils/b/a;

    const/high16 v1, 0xc80000

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/utils/b/a;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BG:Lcom/xiaopeng/devtools/utils/b/a;

    .line 40
    return-void
.end method

.method private synthetic A([B)V
    .locals 4

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/system/c/c;->Bp:Z

    if-eqz v0, :cond_0

    .line 95
    const-string p1, "UDPClient"

    const-string v0, "sendByteCmd it is already stopped"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/c/c;->kV()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BL:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/devtools/system/c/c;->uR:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/system/c/c;->connect(Ljava/lang/String;I)V

    .line 100
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/c/c;->kV()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p1

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/c/c;->BM:Ljava/net/InetAddress;

    iget v3, p0, Lcom/xiaopeng/devtools/system/c/c;->uR:I

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BI:Ljava/net/DatagramPacket;

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BI:Ljava/net/DatagramPacket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/DatagramPacket;)Ljava/net/DatagramPacket;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BJ:Ljava/net/DatagramPacket;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/c/c;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BM:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/system/c/c;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/system/c/c;->Bp:Z

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramSocket;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/InetAddress;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/c/c;->BM:Ljava/net/InetAddress;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/system/c/c$a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/c/c;->xM:Lcom/xiaopeng/devtools/system/c/c$a;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/system/c/c;)Lcom/xiaopeng/devtools/utils/b/a;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/c/c;->BG:Lcom/xiaopeng/devtools/utils/b/a;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/system/c/c;)Ljava/net/DatagramPacket;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/devtools/system/c/c;->BJ:Ljava/net/DatagramPacket;

    return-object p0
.end method

.method public static synthetic lambda$SuGt0O3PYRFNTcl_0Yv2QrB_8E0(Lcom/xiaopeng/devtools/system/c/c;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/c/c;->A([B)V

    return-void
.end method


# virtual methods
.method public T(Z)V
    .locals 0

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/c/c;->Bp:Z

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->close()V

    .line 79
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BK:Lcom/xiaopeng/devtools/system/c/c$b;

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BK:Lcom/xiaopeng/devtools/system/c/c$b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/system/c/c$b;->interrupt()V

    .line 84
    :cond_2
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/system/c/c$a;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->xM:Lcom/xiaopeng/devtools/system/c/c$a;

    .line 116
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 1

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BL:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/xiaopeng/devtools/system/c/c;->uR:I

    .line 55
    new-instance p1, Lcom/xiaopeng/devtools/system/c/c$b;

    iget-object p2, p0, Lcom/xiaopeng/devtools/system/c/c;->BL:Ljava/lang/String;

    iget v0, p0, Lcom/xiaopeng/devtools/system/c/c;->uR:I

    invoke-direct {p1, p0, p2, v0}, Lcom/xiaopeng/devtools/system/c/c$b;-><init>(Lcom/xiaopeng/devtools/system/c/c;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BK:Lcom/xiaopeng/devtools/system/c/c$b;

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/c/c;->BK:Lcom/xiaopeng/devtools/system/c/c$b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/system/c/c$b;->start()V

    .line 57
    return-void
.end method

.method public kV()Z
    .locals 1

    .line 63
    nop

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BH:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y([B)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/c/c;->BG:Lcom/xiaopeng/devtools/utils/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/utils/b/a;->returnBuf([B)V

    .line 44
    return-void
.end method

.method public z([B)V
    .locals 1

    .line 92
    new-instance v0, Lcom/xiaopeng/devtools/system/c/-$$Lambda$c$SuGt0O3PYRFNTcl_0Yv2QrB_8E0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/system/c/-$$Lambda$c$SuGt0O3PYRFNTcl_0Yv2QrB_8E0;-><init>(Lcom/xiaopeng/devtools/system/c/c;[B)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
