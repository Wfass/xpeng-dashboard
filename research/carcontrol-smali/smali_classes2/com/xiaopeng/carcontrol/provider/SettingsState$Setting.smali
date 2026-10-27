.class Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;
.super Ljava/lang/Object;
.source "SettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/provider/SettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Setting"
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "other"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-object p1, p2, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    .line 168
    iget-object p1, p2, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    .line 169
    iget-object p1, p2, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "value",
            "defaultValue"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "null"

    .line 178
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 181
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "value",
            "makeDefault"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p3, p4}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->update(Ljava/lang/String;Z)Z

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "defaultValue"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/provider/SettingsState;->access$000(Lcom/xiaopeng/carcontrol/provider/SettingsState;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public reset()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->update(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "setDefault"
        }
    .end annotation

    const-string v0, "null"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 222
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    move-object v0, p1

    .line 228
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->value:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->defaultValue:Ljava/lang/String;

    .line 229
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 233
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
