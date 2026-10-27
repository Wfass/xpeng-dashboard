.class Lcom/xiaopeng/xui/widget/XTextFields$1;
.super Ljava/lang/Object;
.source "XTextFields.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTextFields;->onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTextFields;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTextFields;Landroid/view/View;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTextFields$1;->this$0:Lcom/xiaopeng/xui/widget/XTextFields;

    iput-object p2, p0, Lcom/xiaopeng/xui/widget/XTextFields$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTextFields$1;->this$0:Lcom/xiaopeng/xui/widget/XTextFields;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextFields;->passwordCheckToggleRequested()V

    return-void
.end method
