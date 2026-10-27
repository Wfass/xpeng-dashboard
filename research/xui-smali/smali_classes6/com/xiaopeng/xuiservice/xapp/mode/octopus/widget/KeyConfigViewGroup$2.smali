.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;
.super Ljava/lang/Object;
.source "KeyConfigViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    .line 302
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 314
    :sswitch_0
    const v0, 0x7f0e00b3

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(I)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;->onButtonClick(I)V

    goto :goto_0

    .line 326
    :sswitch_1
    const v0, 0x7f0e00b0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(I)V

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V

    .line 328
    goto :goto_0

    .line 307
    :sswitch_2
    const v0, 0x7f0e00af

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(I)V

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$EventCallback;->onButtonClick(I)V

    goto :goto_0

    .line 322
    :sswitch_3
    const v0, 0x7f0e00ae

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XToast;->show(I)V

    .line 323
    nop

    .line 333
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09004c -> :sswitch_3
        0x7f09004e -> :sswitch_2
        0x7f09004f -> :sswitch_1
        0x7f090055 -> :sswitch_0
    .end sparse-switch
.end method
