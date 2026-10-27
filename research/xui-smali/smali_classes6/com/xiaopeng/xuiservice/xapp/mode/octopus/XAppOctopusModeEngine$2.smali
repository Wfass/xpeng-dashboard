.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$2;
.super Ljava/lang/Object;
.source "XAppOctopusModeEngine.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/XInputManagerWrapper$KeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/XAppOctopusModeEngine;Landroid/view/KeyEvent;)V

    .line 192
    return-void
.end method
