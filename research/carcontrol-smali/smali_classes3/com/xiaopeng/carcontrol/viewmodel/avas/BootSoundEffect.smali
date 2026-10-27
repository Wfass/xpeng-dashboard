.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;
.super Ljava/lang/Enum;
.source "BootSoundEffect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

.field public static final enum EffectA:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

.field public static final enum EffectB:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

.field public static final enum EffectC:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

.field public static final enum EffectD:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 11
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->Off:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    .line 12
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    const-string v3, "EffectA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    .line 13
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    const-string v5, "EffectB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    .line 14
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    const-string v7, "EffectC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    .line 15
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    const-string v9, "EffectD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectD:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromXuiCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
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

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectD:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object p0

    .line 26
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object p0

    .line 22
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object p0

    .line 20
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->Off:Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;

    return-object v0
.end method


# virtual methods
.method public toXuiCmd()I
    .locals 3

    .line 35
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$avas$BootSoundEffect:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/avas/BootSoundEffect;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
