.class public final synthetic Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$7xjBh8g8cL2vmL_KlQE3_yIu90s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$7xjBh8g8cL2vmL_KlQE3_yIu90s;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$WindowControlManagerImpl$7xjBh8g8cL2vmL_KlQE3_yIu90s;->f$0:Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/WindowControlManagerImpl;->lambda$observeData$2$WindowControlManagerImpl(Ljava/lang/Float;)V

    return-void
.end method
