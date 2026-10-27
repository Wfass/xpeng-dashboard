.class public Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;
.super Ljava/lang/Object;
.source "ControlEventMsg.java"


# static fields
.field public static final MEDITATION_END:I = 0x0

.field public static final MEDITATION_RESUME:I = 0x2

.field public static final MEDITATION_START:I = 0x1

.field public static final TYPE_ANALOG_SOUND:Ljava/lang/String; = "ANALOG_SOUND"

.field public static final TYPE_CHAIR_POS_BUBBLE:Ljava/lang/String; = "CHAIR_POS_BUBBLE"

.field public static final TYPE_LAMP_AUTO:Ljava/lang/String; = "LAMP_AUTO"

.field public static final TYPE_LAMP_CLOSE:Ljava/lang/String; = "LAMP_CLOSE"

.field public static final TYPE_LAMP_LOCATION:Ljava/lang/String; = "LAMP_LOCATION"

.field public static final TYPE_LAMP_NEAR:Ljava/lang/String; = "LAMP_NEAR"

.field public static final TYPE_MEDITATION_MODE:Ljava/lang/String; = "MEDITATION_MODE"

.field public static final TYPE_REAR_MIRROR:Ljava/lang/String; = "REAR_MIRROR"

.field public static final TYPE_TRUNK_STATE:Ljava/lang/String; = "TRUNK_STATE"

.field public static final TYPE_WELCOME_MODE:Ljava/lang/String; = "WELCOME_MODE"

.field public static final TYPE_WIPER:Ljava/lang/String; = "TYPE_WIPER"


# instance fields
.field private index:I

.field private isChecked:Z

.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->value:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->isChecked:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->index:I

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

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ControlEventMsg{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "name=\'"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ", index="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", isChecked="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->isChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", value="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/carcontrol/bean/ControlEventMsg;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
