.class Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$2;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .param p1, "xDialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "i"    # I

    .line 46
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$000()Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->access$002(Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;

    .line 48
    return-void
.end method
