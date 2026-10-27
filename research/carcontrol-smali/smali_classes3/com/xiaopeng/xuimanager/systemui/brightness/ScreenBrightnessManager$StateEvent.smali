.class Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;
.super Ljava/lang/Object;
.source "ScreenBrightnessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvent"
.end annotation


# instance fields
.field private isForceOpen:Z

.field private screenId:I

.field private source:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->screenId:I

    .line 295
    iput p2, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->state:I

    .line 296
    iput-boolean p3, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->isForceOpen:Z

    .line 297
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getScreenId()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->screenId:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->state:I

    return v0
.end method

.method public isForceOpen()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/brightness/ScreenBrightnessManager$StateEvent;->isForceOpen:Z

    return v0
.end method
