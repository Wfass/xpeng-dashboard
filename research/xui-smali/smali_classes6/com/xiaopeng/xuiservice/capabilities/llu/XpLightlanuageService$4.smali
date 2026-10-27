.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$4;
.super Ljava/lang/Object;
.source "XpLightlanuageService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    .line 1476
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedCar()V
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->access$1800(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;)V

    .line 1480
    return-void
.end method

.method public onDisconnectCar()V
    .locals 0

    .line 1484
    return-void
.end method
