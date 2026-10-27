.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;
.super Ljava/lang/Enum;
.source "DoorKeyForCustomer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field public static final enum Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field public static final enum Mute:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field public static final enum ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field public static final enum Speech:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field public static final enum SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

.field private static final TAG:Ljava/lang/String; = "DoorKeyForCustomer"

.field private static sDoorKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 24
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    const-string v1, "Speech"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Speech:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 28
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    const-string v3, "Mute"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Mute:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 32
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    const-string v5, "SwitchMedia"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 36
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    const-string v7, "ShowOff"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    .line 40
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    const-string v9, "Disable"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 20
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromSwsValue(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DoorKeyForCustomer value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "DoorKeyForCustomer"

    invoke-static {v1, p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0

    .line 61
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0

    .line 57
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0

    .line 55
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Mute:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0

    .line 53
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Speech:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0

    .line 51
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0
.end method

.method public static getDoorKeyList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->sDoorKeyList:Ljava/util/List;

    if-nez v0, :cond_4

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->sDoorKeyList:Ljava/util/List;

    .line 147
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 148
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$DoorKeyForCustomer:[I

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "isSupportSwitchMedia"

    .line 160
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->sDoorKeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v4, "isShowDoorKeySpeech"

    .line 155
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->sDoorKeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :cond_2
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->sDoorKeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_4
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->sDoorKeyList:Ljava/util/List;

    return-object v0
.end method

.method public static getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->getDoorKeyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 3

    .line 117
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$DoorKeyForCustomer:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 134
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_show_off_desc:I

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DoorKeyForCustomer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_switch_media_desc:I

    goto :goto_0

    .line 131
    :cond_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_mute_desc:I

    goto :goto_0

    .line 128
    :cond_3
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_speech_desc:I

    goto :goto_0

    .line 119
    :cond_4
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_disable_desc:I

    .line 139
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 90
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$DoorKeyForCustomer:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 107
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_show_off:I

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DoorKeyForCustomer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_switch_media:I

    goto :goto_0

    .line 104
    :cond_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_mute:I

    goto :goto_0

    .line 101
    :cond_3
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_speech:I

    goto :goto_0

    .line 92
    :cond_4
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_disable:I

    .line 112
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toIcmCmd()I
    .locals 4

    .line 69
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$DoorKeyForCustomer:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DoorKeyForCustomer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoorKeyForCustomer"

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_0
    return v3

    :cond_1
    return v1

    :cond_2
    return v3

    :cond_3
    return v1

    :cond_4
    return v2
.end method
