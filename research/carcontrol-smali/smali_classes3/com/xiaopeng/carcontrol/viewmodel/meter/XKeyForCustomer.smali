.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;
.super Ljava/lang/Enum;
.source "XKeyForCustomer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum AutoPark:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum DvrCapture:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum NraView:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field private static final TAG:Ljava/lang/String; = "XKeyForCustomer"

.field public static final enum UnlockTrunk:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field public static final enum XPower:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

.field private static sXkeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v1, "UnlockTrunk"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->UnlockTrunk:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 33
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v3, "SwitchMedia"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 37
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v5, "ShowOff"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 41
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v7, "DvrCapture"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->DvrCapture:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 45
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v9, "AutoPark"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->AutoPark:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 49
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v11, "XPower"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->XPower:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 53
    new-instance v11, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v13, "NraView"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->NraView:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    .line 57
    new-instance v13, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const-string v15, "Disable"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 24
    sput-object v15, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

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

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static addXKey(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "position"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 276
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 277
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static fromSwsValue(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;
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

    packed-switch p0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown XKeyForCustomer value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "XKeyForCustomer"

    invoke-static {v1, p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return-object p0

    .line 92
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->NraView:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 90
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->XPower:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 78
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->UnlockTrunk:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 84
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->AutoPark:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 82
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->DvrCapture:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 88
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ShowOff:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 80
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->SwitchMedia:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    .line 76
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->Disable:Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPosition(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->getXkeyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
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

.method public static getXkeyList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;",
            ">;"
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    .line 222
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 223
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$XKeyForCustomer:[I

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string v4, "isShowXkeyNraView"

    .line 263
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string v4, "isSupportXSayHi"

    .line 235
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    const-string v4, "isSupportAutoParkForXKey"

    .line 241
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    const-string v4, "isSupportCiuConfig"

    .line 246
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v4

    const-string/jumbo v5, "xp_mcu"

    invoke-virtual {v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/carcontrol/carmanager/impl/McuController;

    .line 248
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/carmanager/impl/McuController;->getCiuState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    const-string v4, "isSupportSwitchMedia"

    .line 225
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    const-string v4, "isSupportXUnlockTrunk"

    .line 230
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_7
    const-string v4, "isSupportXkeyDisable"

    .line 254
    invoke-static {v4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 272
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeXKey(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    if-ltz p0, :cond_0

    .line 282
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 283
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->sXkeyList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 3

    .line 177
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$XKeyForCustomer:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 200
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_xpower_desc:I

    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown XKeyForCustomer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_show_off_desc:I

    goto :goto_0

    .line 191
    :cond_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_auto_park_desc:I

    goto :goto_0

    .line 185
    :cond_3
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_switch_media_desc:I

    goto :goto_0

    .line 182
    :cond_4
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_unlock_trunk_desc:I

    goto :goto_0

    .line 209
    :cond_5
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_disable:I

    .line 214
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

    .line 135
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$XKeyForCustomer:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown XKeyForCustomer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_narrow:I

    goto :goto_0

    .line 158
    :pswitch_1
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_xpower:I

    goto :goto_0

    .line 155
    :pswitch_2
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_show_off:I

    goto :goto_0

    .line 149
    :pswitch_3
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_auto_park:I

    goto :goto_0

    .line 146
    :pswitch_4
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_dvr_capture:I

    goto :goto_0

    .line 143
    :pswitch_5
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_switch_media:I

    goto :goto_0

    .line 140
    :pswitch_6
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_unlock_trunk:I

    goto :goto_0

    .line 137
    :pswitch_7
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_x_key_disable:I

    .line 172
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toSwsCmd()I
    .locals 3

    .line 104
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$meter$XKeyForCustomer:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown XKeyForCustomer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XKeyForCustomer"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/16 v0, 0x9

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x4

    return v0

    :pswitch_4
    const/4 v0, 0x3

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/16 v0, 0x8

    return v0

    :pswitch_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
