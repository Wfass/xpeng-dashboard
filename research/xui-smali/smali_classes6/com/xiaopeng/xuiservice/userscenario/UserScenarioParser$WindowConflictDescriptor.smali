.class Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
.super Ljava/lang/Object;
.source "UserScenarioParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowConflictDescriptor"
.end annotation


# instance fields
.field public isDefault:Z

.field public panelAdapt:Z

.field public toastValueId:Ljava/lang/String;

.field public windowIds:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->isDefault:Z

    .line 127
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->panelAdapt:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$1;

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowConflictDescriptor[ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->windowIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",toast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->toastValueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->isDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
