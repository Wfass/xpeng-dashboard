.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$1;
.super Ljava/lang/Object;
.source "KeyConfigViewGroup.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XExposedDropdownMenu$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->initViews()V
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

    .line 231
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$002(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    invoke-static {p2}, Lcom/xiaopeng/xui/app/XToast;->show(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;)V

    .line 237
    return-void
.end method
