.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;
.super Ljava/lang/Object;
.source "KeyViewInfo.java"


# instance fields
.field public mHeight:I

.field public mKeyCode:I

.field public mKeyCodeIndexName:Ljava/lang/String;

.field public mKeyImgResourceId:I

.field public mPoint:Landroid/graphics/Point;

.field public mWidth:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILandroid/graphics/Point;II)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "keyCodeIndexName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "point"    # Landroid/graphics/Point;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    .line 15
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCodeIndexName:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyImgResourceId:I

    .line 17
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    .line 18
    iput p5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mWidth:I

    .line 19
    iput p6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mHeight:I

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyInfo{mKeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyCodeIndexName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyCodeIndexName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyImgResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mKeyImgResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/bean/KeyViewInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
