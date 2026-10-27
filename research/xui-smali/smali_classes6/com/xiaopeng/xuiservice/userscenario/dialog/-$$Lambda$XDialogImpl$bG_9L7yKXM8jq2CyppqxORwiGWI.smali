.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;->f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;->f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;->f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$bG_9L7yKXM8jq2CyppqxORwiGWI;->f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->lambda$setDialogContent$1(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Lcom/xiaopeng/xui/app/XDialog;I)V

    return-void
.end method
