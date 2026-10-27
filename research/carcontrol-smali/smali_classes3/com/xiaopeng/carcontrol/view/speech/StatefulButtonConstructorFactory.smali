.class public Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory;
.super Ljava/lang/Object;
.source "StatefulButtonConstructorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstructor(Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;Landroid/content/Context;I)Lcom/xiaopeng/speech/vui/constructor/IStatefulButtonConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "context",
            "level"
        }
    .end annotation

    .line 12
    sget-object v0, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$1;->$SwitchMap$com$xiaopeng$carcontrol$view$speech$StatefulButtonConstructorFactory$ConstructorType:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/speech/StatefulButtonConstructorFactory$ConstructorType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Lcom/xiaopeng/carcontrol/view/speech/SeatHotStateFulButtonConstructor;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/speech/SeatHotStateFulButtonConstructor;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/speech/SeatAirStatefulButtonConstructor;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object p0
.end method
