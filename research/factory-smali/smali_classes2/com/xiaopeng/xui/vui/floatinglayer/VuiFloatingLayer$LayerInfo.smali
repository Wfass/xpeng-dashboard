.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;
.super Ljava/lang/Object;
.source "VuiFloatingLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayerInfo"
.end annotation


# instance fields
.field location:[I

.field mCenterOffsetX:I

.field mCenterOffsetY:I

.field targetHeight:I

.field targetWidth:I

.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayerInfo{targetWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    .line 51
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterOffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterOffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method
