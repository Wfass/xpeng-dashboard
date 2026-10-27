.class Lcom/xiaopeng/xui/widget/XSeekBar$1;
.super Ljava/lang/Object;
.source "XSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSeekBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSeekBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XSeekBar;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSeekBar;->updateVui(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 58
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->this$0:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 65
    :cond_0
    return-void
.end method
