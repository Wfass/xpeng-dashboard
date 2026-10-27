.class public Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;
.super Ljava/lang/Object;
.source "ConditionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Condition"
.end annotation


# instance fields
.field private keyData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private rule:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rule"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->this$0:Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->keyData:Ljava/util/List;

    return-object v0
.end method

.method public getRule()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->rule:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "keyData":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->keyData:Ljava/util/List;

    .line 64
    return-void
.end method

.method public setRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "rule"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->rule:Ljava/lang/String;

    .line 56
    return-void
.end method
