.class public Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;
.super Ljava/lang/Object;
.source "UserScenarioConfiger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanelCheckResult"
.end annotation


# instance fields
.field result:I

.field status:[Z

.field winType:[[Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->result:I

    .line 536
    const/4 v1, 0x2

    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->status:[Z

    .line 540
    new-array v1, v1, [[Ljava/lang/Integer;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v3, v1, v0

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->winType:[[Ljava/lang/Integer;

    .line 544
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "checkResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->status:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 552
    const-string v2, ",screen "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    const-string v2, "[status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->status:[Z

    aget-boolean v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 556
    const-string v2, ",winTypes:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$PanelCheckResult;->winType:[[Ljava/lang/Integer;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
