.class public Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;
.super Ljava/lang/Object;
.source "GeekSetting.java"


# instance fields
.field private actualValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actualValue"
    .end annotation
.end field

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private leftLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "leftLabel"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private options:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "itemDefinitions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;",
            ">;"
        }
    .end annotation
.end field

.field private rightLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rightLabel"
    .end annotation
.end field

.field private settingId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "settingId"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private targetValue:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "targetValue"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->actualValue:I

    return v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getLeftLabel()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->leftLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->options:Ljava/util/List;

    return-object v0
.end method

.method public getRightLabel()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->rightLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->settingId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->status:I

    return v0
.end method

.method public getTargetValue()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->targetValue:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->type:I

    return v0
.end method

.method public setActualValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualValue"
        }
    .end annotation

    .line 73
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->actualValue:I

    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "labels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->labels:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 107
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->leftLabel:Ljava/lang/String;

    const/4 v0, 0x1

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->rightLabel:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setLeftLabel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftLabel"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->leftLabel:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->name:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->options:Ljava/util/List;

    return-void
.end method

.method public setRightLabel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightLabel"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->rightLabel:Ljava/lang/String;

    return-void
.end method

.method public setSettingId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingId"
        }
    .end annotation

    .line 33
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->settingId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 57
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->status:I

    return-void
.end method

.method public setTargetValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetValue"
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->targetValue:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->type:I

    return-void
.end method
