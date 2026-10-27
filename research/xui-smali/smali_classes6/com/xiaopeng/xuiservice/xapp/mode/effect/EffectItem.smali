.class public Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;
.super Ljava/lang/Object;
.source "EffectItem.java"


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->index:I

    .line 9
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->name:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 17
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->index:I

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectItem;->name:Ljava/lang/String;

    .line 26
    return-void
.end method
