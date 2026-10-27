.class public final enum Lcom/xiaopeng/vui/commons/EffectType;
.super Ljava/lang/Enum;
.source "EffectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/EffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/EffectType;

.field public static final enum WATERRIPPLE:Lcom/xiaopeng/vui/commons/EffectType;


# instance fields
.field effect:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/xiaopeng/vui/commons/EffectType;

    const-string v1, "WATERRIPPLE"

    const-string v2, "waterRipple"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/EffectType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/EffectType;->WATERRIPPLE:Lcom/xiaopeng/vui/commons/EffectType;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/EffectType;

    sget-object v1, Lcom/xiaopeng/vui/commons/EffectType;->WATERRIPPLE:Lcom/xiaopeng/vui/commons/EffectType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/vui/commons/EffectType;->$VALUES:[Lcom/xiaopeng/vui/commons/EffectType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "effect"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/EffectType;->effect:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/EffectType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/xiaopeng/vui/commons/EffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/EffectType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/EffectType;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/vui/commons/EffectType;->$VALUES:[Lcom/xiaopeng/vui/commons/EffectType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/EffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/EffectType;

    return-object v0
.end method


# virtual methods
.method public getEffectType()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/EffectType;->effect:Ljava/lang/String;

    return-object v0
.end method
