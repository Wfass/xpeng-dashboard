.class public Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;
.super Ljava/lang/Object;
.source "LangLightEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/LangLightEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rear_Effect"
.end annotation


# instance fields
.field private data:[I

.field private loop:I

.field private period:I

.field private retain:I

.field private sdata:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->data:[I

    return-object v0
.end method

.method public getLoop()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->loop:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->period:I

    return v0
.end method

.method public getRetain()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->retain:I

    return v0
.end method

.method public getSdata()[Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->sdata:[Ljava/lang/String;

    return-object v0
.end method

.method public setData([I)V
    .locals 0
    .param p1, "data"    # [I

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->data:[I

    .line 126
    return-void
.end method

.method public setLoop(I)V
    .locals 0
    .param p1, "loop"    # I

    .line 109
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->loop:I

    .line 110
    return-void
.end method

.method public setPeriod(I)V
    .locals 0
    .param p1, "period"    # I

    .line 101
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->period:I

    .line 102
    return-void
.end method

.method public setRetain(I)V
    .locals 0
    .param p1, "retain"    # I

    .line 117
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->retain:I

    .line 118
    return-void
.end method

.method public setSdata([Ljava/lang/String;)V
    .locals 0
    .param p1, "sdata"    # [Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/LangLightEffect$Rear_Effect;->sdata:[Ljava/lang/String;

    .line 134
    return-void
.end method
