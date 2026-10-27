.class public final synthetic Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[B


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$0:Z

    iput-object p2, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$2:I

    iput-object p4, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$5:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$0:Z

    iget-object v1, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$2:I

    iget-object v3, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$NGh-D1peyi0UGzU1Ah4pEIBBtuE;->f$5:[B

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/aar/server/ServerManager;->lambda$send$1(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
