.class public Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
.super Ljava/lang/Object;
.source "VcuModeResponse.java"


# instance fields
.field private mCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private mMode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mCode:Ljava/lang/Integer;

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMessage:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMode:Ljava/lang/Integer;

    .line 18
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCode(Ljava/lang/Integer;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mCode:Ljava/lang/Integer;

    .line 26
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMessage:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMode:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcuModeResponse{mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->mMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
