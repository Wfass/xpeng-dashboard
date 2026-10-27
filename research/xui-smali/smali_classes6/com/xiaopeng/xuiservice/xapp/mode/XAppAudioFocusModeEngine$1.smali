.class Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine$1;
.super Ljava/lang/Object;
.source "XAppAudioFocusModeEngine.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/XAppAudioFocusModeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .line 74
    return-void
.end method
