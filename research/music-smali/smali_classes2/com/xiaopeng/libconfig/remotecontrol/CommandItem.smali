.class public Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;
.super Ljava/lang/Object;
.source "CommandItem.java"


# instance fields
.field private cmd_type:I

.field private cmd_value:F

.field private fileUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd_type()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->cmd_type:I

    return v0
.end method

.method public getCmd_value()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->cmd_value:F

    return v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd_type(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->cmd_type:I

    return-void
.end method

.method public setCmd_value(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->cmd_value:F

    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->fileUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandItem{cmd_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->cmd_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmd_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->cmd_value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/libconfig/remotecontrol/CommandItem;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
