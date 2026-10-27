.class public Lcom/xiaopeng/speech/vui/model/VuiElementGroup;
.super Lcom/xiaopeng/vui/commons/model/VuiElement;
.source "VuiElementGroup.java"


# instance fields
.field private dynamic:Z

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation
.end field

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->dynamic:Z

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->position:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->elements:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->position:I

    return v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->dynamic:Z

    return v0
.end method

.method public setDynamic(Z)V
    .locals 0
    .param p1, "dynamic"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->dynamic:Z

    .line 21
    return-void
.end method

.method public setElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->elements:Ljava/util/List;

    .line 37
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/speech/vui/model/VuiElementGroup;->position:I

    .line 29
    return-void
.end method
