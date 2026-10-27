.class public Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;
.super Ljava/lang/Object;
.source "IInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputKeyEvent"
.end annotation


# instance fields
.field code:I

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "value"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->code:I

    .line 30
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->code:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->value:Ljava/lang/Object;

    return-object v0
.end method
