.class public Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;
.super Ljava/lang/Object;
.source "UserSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifySwithContentExtra"
.end annotation


# instance fields
.field public isUserScenario:Z

.field public opResult:I

.field public operation:I

.field public packageName:Ljava/lang/String;

.field public startClassName:Ljava/lang/String;

.field public startPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscene/UserSceneService;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    .param p2, "operation"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isUserScenario"    # Z
    .param p5, "opResult"    # I
    .param p6, "startPackageName"    # Ljava/lang/String;
    .param p7, "startClassName"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->this$0:Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->operation:I

    .line 149
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->packageName:Ljava/lang/String;

    .line 150
    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->isUserScenario:Z

    .line 151
    iput p5, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->opResult:I

    .line 152
    iput-object p6, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startPackageName:Ljava/lang/String;

    .line 153
    iput-object p7, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startClassName:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public getOpResult()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->opResult:I

    return v0
.end method

.method public getOperation()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->operation:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartClassName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPackageName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isUserScenario()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->isUserScenario:Z

    return v0
.end method

.method public setOpResult(I)V
    .locals 0
    .param p1, "opResult"    # I

    .line 178
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->opResult:I

    .line 179
    return-void
.end method

.method public setOperation(I)V
    .locals 0
    .param p1, "operation"    # I

    .line 160
    iput p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->operation:I

    .line 161
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->packageName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setStartClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "startClassName"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startClassName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setStartPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "startPackageName"    # Ljava/lang/String;

    .line 184
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startPackageName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setUserScenario(Z)V
    .locals 0
    .param p1, "userScenario"    # Z

    .line 172
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->isUserScenario:Z

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotifySwithContentExtra{operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->operation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isUserScenario="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->isUserScenario:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", opResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->opResult:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", startPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startClassName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscene/UserSceneService$NotifySwithContentExtra;->startClassName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
