.class public Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;
.super Ljava/lang/Object;
.source "MCUBurnBean.java"


# static fields
.field public static final BURNING:I = 0x1

.field public static final BURN_ERROR:I = 0x3

.field public static final BURN_FINISH:I = 0x2

.field public static final TYPE_MCU:I = 0x1

.field public static final TYPE_SCU:I = 0x2


# instance fields
.field private final process:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "process"
    .end annotation
.end field

.field private final state:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field private final type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "process"    # I
    .param p3, "type"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->state:I

    .line 28
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->process:I

    .line 29
    iput p3, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->type:I

    .line 30
    return-void
.end method


# virtual methods
.method public getProcess()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->process:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    const-string v0, ""

    .line 46
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "process :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->process:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/event/MCUBurnBean;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method
