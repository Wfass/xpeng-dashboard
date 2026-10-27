.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$3;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 1979
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedCar()V
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V

    .line 1983
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2602(Z)Z

    .line 1984
    return-void
.end method

.method public onDisconnectCar()V
    .locals 1

    .line 1988
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2602(Z)Z

    .line 1989
    return-void
.end method
