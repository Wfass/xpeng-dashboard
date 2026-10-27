.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/-$$Lambda$RemoteManager$PFsjBOrEtaA754iYS13_EgNYinE;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->lambda$updateProperty$0(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
