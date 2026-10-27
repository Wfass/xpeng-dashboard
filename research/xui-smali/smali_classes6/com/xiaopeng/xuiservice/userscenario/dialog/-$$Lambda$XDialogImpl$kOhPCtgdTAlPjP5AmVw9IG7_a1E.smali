.class public final synthetic Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

.field private final synthetic f$1:Ljava/lang/Object;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Ljava/lang/Object;ILcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$2:I

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$3:Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$0:Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$1:Ljava/lang/Object;

    iget v2, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$2:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/userscenario/dialog/-$$Lambda$XDialogImpl$kOhPCtgdTAlPjP5AmVw9IG7_a1E;->f$3:Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;->lambda$onDismissUnSubscribe$3(Lcom/xiaopeng/xuiservice/userscenario/dialog/XDialogImpl;Ljava/lang/Object;ILcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;Landroid/content/DialogInterface;)V

    return-void
.end method
