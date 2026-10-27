.class public Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;
.super Ljava/lang/Object;
.source "GeekOption.java"


# instance fields
.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemName"
    .end annotation
.end field

.field private value:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ItemValue"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;->value:I

    return v0
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

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;->name:Ljava/lang/String;

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

    .line 24
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/drive/GeekOption;->value:I

    return-void
.end method
