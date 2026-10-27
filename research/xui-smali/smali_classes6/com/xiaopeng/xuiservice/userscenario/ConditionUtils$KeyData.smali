.class public Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;
.super Ljava/lang/Object;
.source "ConditionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyData"
.end annotation


# instance fields
.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private keyType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyType"
    .end annotation
.end field

.field private matchRule:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "matchRule"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->this$0:Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchRule()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->matchRule:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->key:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyType"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->keyType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setMatchRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "matchRule"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->matchRule:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyData{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->keyType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", matchRule=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;->matchRule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
