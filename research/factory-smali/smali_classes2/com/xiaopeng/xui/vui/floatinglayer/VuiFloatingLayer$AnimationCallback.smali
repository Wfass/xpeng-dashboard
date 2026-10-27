.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;
.super Ljava/lang/Object;
.source "VuiFloatingLayer.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

.field private type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V
    .locals 0
    .param p2, "type"    # I

    .line 145
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->type:I

    .line 147
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 2
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    const-string v1, "onAnimationEnd "

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->type:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    .line 158
    return-void
.end method

.method public onAnimationStart(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 2
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    const-string v1, "onAnimationStart "

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V

    .line 152
    return-void
.end method
