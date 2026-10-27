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
.field final synthetic aev:Lcom/xiaopeng/xui/widget/XSeekBar;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSeekBar;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->l(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar$1;->aev:Lcom/xiaopeng/xui/widget/XSeekBar;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->a(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 63
    :cond_0
    return-void
.end method
