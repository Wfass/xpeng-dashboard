.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;
.super Ljava/lang/Object;
.source "KeyViewBasicInfo.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private height:I

.field private keyCode:I

.field private resId:I

.field private width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "resId"    # I
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->keyCode:I

    .line 12
    iput p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->resId:I

    .line 13
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->desc:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->width:I

    .line 15
    iput p5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->height:I

    .line 16
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->height:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->keyCode:I

    return v0
.end method

.method public getResId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->resId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->width:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->desc:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 55
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->height:I

    .line 56
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->keyCode:I

    .line 24
    return-void
.end method

.method public setResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 31
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->resId:I

    .line 32
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 47
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewBasicInfo;->width:I

    .line 48
    return-void
.end method
