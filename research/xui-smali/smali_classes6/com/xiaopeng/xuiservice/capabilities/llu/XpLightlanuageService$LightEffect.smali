.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LightEffect"
.end annotation


# instance fields
.field public duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "special_duration"
        }
        value = "duration"
    .end annotation
.end field

.field public front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "front_effect"
        }
        value = "front"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "effect_id"
        }
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "effect_name"
        }
        value = "name"
    .end annotation
.end field

.field public rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "rear_effect"
        }
        value = "rear"
    .end annotation
.end field

.field public reset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "notResetFlag"
        }
        value = "reset"
    .end annotation
.end field

.field public special:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "special_mode"
        }
        value = "special"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "effect_type"
        }
        value = "type"
    .end annotation
.end field

.field public withAngle:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "isSupportAngle"
        }
        value = "withAngle"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
