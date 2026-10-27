.class Lcom/android/car/xpeng/biz/XpCarBodyBizService$1;
.super Ljava/lang/Object;
.source "XpCarBodyBizService.java"

# interfaces
.implements Lcom/android/car/xpeng/biz/CarBizTaskBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/biz/XpCarBodyBizService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/xpeng/biz/XpCarBodyBizService;


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/biz/XpCarBodyBizService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/xpeng/biz/XpCarBodyBizService;

    .line 39
    iput-object p1, p0, Lcom/android/car/xpeng/biz/XpCarBodyBizService$1;->this$0:Lcom/android/car/xpeng/biz/XpCarBodyBizService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPropertyId()I
    .locals 1

    .line 43
    const v0, 0x21401c0a

    return v0
.end method

.method public onHandleEvent(Landroid/car/hardware/property/CarPropertyEvent;)Landroid/car/hardware/property/CarPropertyEvent;
    .locals 0
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 55
    return-object p1
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)I
    .locals 3
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 48
    const-string v0, "XpCarBodyControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrunckSwitch task setProperty: propId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/car/xpeng/biz/XpCarBodyBizService$1;->this$0:Lcom/android/car/xpeng/biz/XpCarBodyBizService;

    iget-object v0, v0, Lcom/android/car/xpeng/biz/XpCarBodyBizService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalService;->setProperty(Landroid/car/hardware/CarPropertyValue;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
