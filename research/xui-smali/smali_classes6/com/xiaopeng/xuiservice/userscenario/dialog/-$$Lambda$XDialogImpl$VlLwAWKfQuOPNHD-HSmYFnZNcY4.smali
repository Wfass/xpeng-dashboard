.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

.field private final synthetic f$2:[Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;->f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;->f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;->f$2:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;->f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;->f$1:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$VlLwAWKfQuOPNHD-HSmYFnZNcY4;->f$2:[Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->lambda$setDialogContent$0(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;[Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialog;I)V

    return-void
.end method
