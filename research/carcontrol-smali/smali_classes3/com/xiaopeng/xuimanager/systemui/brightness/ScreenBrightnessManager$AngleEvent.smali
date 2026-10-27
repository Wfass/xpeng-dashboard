.class Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;
.super Ljava/lang/Object;
.source "ScreenBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AngleEvent"
.end annotation


# instance fields
.field private angle:I

.field private isForceOpen:Z

.field private screenId:I

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->screenId:I

    .line 265
    iput p2, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->angle:I

    .line 266
    iput-boolean p3, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->isForceOpen:Z

    .line 267
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->angle:I

    return v0
.end method

.method public getScreenId()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->screenId:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public isForceOpen()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$AngleEvent;->isForceOpen:Z

    return v0
.end method
