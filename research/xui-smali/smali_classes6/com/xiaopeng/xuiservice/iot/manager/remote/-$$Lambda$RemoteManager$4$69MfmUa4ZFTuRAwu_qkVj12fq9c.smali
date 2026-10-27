.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$69MfmUa4ZFTuRAwu_qkVj12fq9c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$69MfmUa4ZFTuRAwu_qkVj12fq9c;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$4$69MfmUa4ZFTuRAwu_qkVj12fq9c;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;->lambda$onReceive$1(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$4;)V

    return-void
.end method
