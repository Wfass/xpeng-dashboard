.class public Lcom/xiaopeng/devtools/devdebug/drivemode/b;
.super Ljava/lang/Object;
.source "DriveModePresent.java"


# instance fields
.field private qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

.field private qC:Lcom/xiaopeng/devtools/devdebug/drivemode/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/devdebug/drivemode/c;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/drivemode/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qC:Lcom/xiaopeng/devtools/devdebug/drivemode/a;

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

    .line 17
    return-void
.end method


# virtual methods
.method public bQ(I)V
    .locals 3

    .line 29
    const-string v0, "DriveModePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qC:Lcom/xiaopeng/devtools/devdebug/drivemode/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/a;->bQ(I)V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/c;->bO(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public fg()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->getMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/devdebug/drivemode/c;->bO(I)V

    .line 40
    :cond_0
    return-void
.end method

.method public getMode()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qC:Lcom/xiaopeng/devtools/devdebug/drivemode/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/a;->getMode()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qC:Lcom/xiaopeng/devtools/devdebug/drivemode/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/a;->onDestroy()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qC:Lcom/xiaopeng/devtools/devdebug/drivemode/a;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/b;->qB:Lcom/xiaopeng/devtools/devdebug/drivemode/c;

    .line 46
    return-void
.end method
