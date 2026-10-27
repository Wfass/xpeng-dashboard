.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Uploader"
.end annotation


# instance fields
.field private front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

.field public frontIndex:I

.field public frontLeft:I

.field public frontSize:I

.field public id:I

.field public mode:I

.field public name:I

.field private rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

.field public rearIndex:I

.field public rearLeft:I

.field public rearSize:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;)V
    .locals 2
    .param p1, "light"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->id:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->name:I

    .line 369
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->id:I

    shr-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->mode:I

    .line 370
    iget v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->id:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->id:I

    .line 371
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    .line 372
    iget-object v0, p1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$LightEffect;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontSize:I

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    array-length v0, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearSize:I

    .line 375
    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearIndex:I

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontIndex:I

    .line 376
    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .line 422
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public build()Landroid/car/hardware/llu/LluScriptParameter;
    .locals 3

    .line 379
    new-instance v0, Landroid/car/hardware/llu/LluScriptParameter$Builder;

    invoke-direct {v0}, Landroid/car/hardware/llu/LluScriptParameter$Builder;-><init>()V

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->id:I

    .line 380
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->effectName(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->period:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectPeriod(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->loop:I

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectLoop(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->retain:I

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectRetain(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontSize:I

    .line 384
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->frontEffectDataTotalLength(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->period:I

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectPeriod(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->loop:I

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectLoop(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget v2, v1, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->retain:I

    nop

    :cond_5
    invoke-virtual {v0, v2}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectRetain(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearSize:I

    .line 388
    invoke-virtual {v0, v1}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->rearEffectDataTotalLength(I)Landroid/car/hardware/llu/LluScriptParameter$Builder;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Landroid/car/hardware/llu/LluScriptParameter$Builder;->build()Landroid/car/hardware/llu/LluScriptParameter;

    move-result-object v0

    .line 379
    return-object v0
.end method

.method public get()[Ljava/lang/Integer;
    .locals 7

    .line 393
    const/4 v0, 0x0

    .line 396
    .local v0, "data":[Ljava/lang/Integer;
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    const/4 v2, 0x0

    const/16 v3, 0x3c

    if-lez v1, :cond_1

    .line 397
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontSize:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    sub-int/2addr v1, v4

    .line 398
    .local v1, "start":I
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    if-lt v4, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    .line 399
    .local v3, "size":I
    :goto_0
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontLeft:I

    .line 400
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->frontIndex:I

    .line 402
    const-string v4, "XpLightlanuageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get frontData["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v1, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-array v0, v3, [Ljava/lang/Integer;

    .line 405
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->front:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v4, v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 406
    .end local v1    # "start":I
    .end local v3    # "size":I
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    if-lez v1, :cond_3

    .line 407
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearSize:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    sub-int/2addr v1, v4

    .line 408
    .restart local v1    # "start":I
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    .line 409
    .restart local v3    # "size":I
    :goto_1
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearLeft:I

    .line 410
    iget v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rearIndex:I

    .line 412
    const-string v4, "XpLightlanuageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get rearData["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v1, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-array v0, v3, [Ljava/lang/Integer;

    .line 415
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Uploader;->rear:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;

    iget-object v4, v4, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$Packet;->data:[Ljava/lang/Integer;

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    .end local v1    # "start":I
    .end local v3    # "size":I
    :cond_3
    :goto_2
    return-object v0
.end method
